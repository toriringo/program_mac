django、postgresの起動
	dockar compose up -d

django
	localhost:18000
	localhost:18000/admin
		root
		いつもの
	localhost:18000/polls


djangoプロジェクトファイル構成
    manage.py
	composeexample/
        __init__.py
        settings.py
        urls.py
        asgi.py
        wsgi.py

開発
	以下のコマンドでコンテナに入って、/code以下で開発する
		docker exec -it django_practice bash

参考
	djangoとpostgresをdockerコンテナで起動する方法
		https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/django/
		https://docs.docker.jp/compose/django.html

	django サンプルプロジェクト作成
		https://docs.djangoproject.com/ja/4.2/intro/tutorial01/

