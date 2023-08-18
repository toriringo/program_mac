// 「グローバル変数」と
// 「staticなグローバル変数」を定義している
// 「staticなグローバル変数」の
// ゲッターとセッターを定義している

#include "lib.h"

//-------------------------
// グローバル変数
//-------------------------
struct Cat global_cat;

//-------------------------
// staticなグローバル変数
//-------------------------
static struct Cat static_global_cat;

// ゲッター
struct Cat* get_static_global_cat()
{
	return &static_global_cat;
}

// セッター
void set_static_global_cat(int i)
{
	static_global_cat.i = i;
}

