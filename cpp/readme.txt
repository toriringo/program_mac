2023/8/18
以下のコマンドを実行すると、threadファイルが生成される
	g++ thread.cpp -o thread
カレントディレクトリにthreadファイルが存在しているときに
上記のコマンドを実行すると、カレントディレクトリの
threadファイルをincludeしようとしてエラーが発生する
threadファイルを削除してコンパイルすれば良い

gccにはxcode版とhomebrew版がある
両者ではincludeパスが異なっている
	xcode版gcc
		/Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/include/
	homebrew版gcc
		/usr/local/Cellar/gcc/13.1.0/include/

以下のコマンドで、includeパスを表示することができる
	g++ -H thread.cpp

includeパスは環境変数CPATHに設定する

xcode版とhomebrew版を混在させないほうがいいと思い
homebrew版を削除した

