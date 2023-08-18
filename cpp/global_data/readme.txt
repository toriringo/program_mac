グローバル変数
	・定義の仕方
		グローバル変数の定義は
		cファイルやcppファイルで行う
		ヘッダで定義すると
		includeするたびにグローバル変数ができて
		リンク時にエラーとなる
			int global_data;

	・公開方法
		グローバル変数の公開は
		externを付与してヘッダファイルで行う
		（関数を公開するときは一般的にはexternを省略する）
			extern int global_data;

	・使い方
		ヘッダファイルをincludeすればよい

staticなグローバル変数
	・定義の仕方
		staticなグローバル変数の定義は
		cファイルやcppファイルで行う
			static int global_data;
		外から使えるようにゲッターとセッターを定義しておく

	・公開の仕方
		ヘッダファイルでゲッターとセッターを公開する

	・使い方
		使う側はヘッダファイルをincludeすればよい


参考
	https://monozukuri-c.com/langc-funclist-extern/
	https://saitodevel01.hatenadiary.org/entry/20110321/1300685958


