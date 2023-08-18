// グローバル変数を公開するには
// externを使う
//
// staticなグローバル変数の
// ゲッターとセッターを公開している

#ifndef LIB_H
#define LIB_H

struct Cat
{
	int i;
};

//-------------------------------------------
// グローバル変数を公開するにはexternを使う
// （グローバル変数に直接アクセスされる）
//-------------------------------------------
extern struct Cat global_cat;

//-------------------------------------------
// staticなグローバル変数用
//-------------------------------------------
struct Cat* get_static_global_cat();
void set_static_global_cat(int i);

#endif // LIB_H

