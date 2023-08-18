libフォルダ内
	静的ライブラリの作成
		g++ -c cat.c
		ar r libcat.a cat.o

	動的ライブラリの作成
		g++ -shared cat.o -o libcat.so

	動的ライブラリのパスを通す
		export DYLD_LIBRARY_PATH="/Users/mittim/mittim/program/program/cpp/static_dynamic_lib/lib/dynamic"

静的ライブラリのリンク
	g++ main.cpp -L lib/static/ -l cat -o main_static

動的ライブラリのリンク
	g++ main.cpp -L lib/dynamic/ -l cat -o main_dynamic

