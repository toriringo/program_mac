from transitions import Machine

states = ['solid', 'liquid', 'gas', 'plasma']

#遷移の定義
# trigger：遷移の引き金になるイベント、source：トリガーイベントを受ける状態、dest：トリガーイベントを受けた後の状態
# before：遷移前に実施されるコールバック、after：遷移後に実施されるコールバック
transitions = [
    { 'trigger': 'melt',       'source': 'solid',   'dest': 'liquid'},
    { 'trigger': 'evaporate',  'source': 'liquid',  'dest': 'gas',     'before': 'action_l2g'},
    { 'trigger': 'sublimate',  'source': 'solid',   'dest': 'gas'},
    { 'trigger': 'ionize',     'source': 'gas',     'dest': 'plasma',  'after': 'action_g2p'}
]

#状態を管理したいオブジェクトの元となるクラス
# 遷移時やイベント発生時のアクションがある場合は、当クラスのmethodに記載する
class Matter(object):
    def action_l2g(self):
        print("*** from liquid to gas ***")

    def action_g2p(self):
        print("*** from gas to plasma ***")

lump = Matter()
machine = Machine(model=lump, states=states, transitions=transitions, initial='liquid', auto_transitions=False)

