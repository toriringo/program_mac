#pragma once
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>

class GAME
{
public:
	int Main()
	{
		// スプライトシートを読み込む
		if (!loadMedia()) {
			return 1;
		}

		while (running) {
			event();
			update();
			render();
			fps();
		}

		return 0;
	}

	GAME();
	~GAME();

	int init();     // 初期化
	void cleanup(); // 後処理
	void event();   // イベント
	void update();  // データ更新
	void render();  // 描画
	void fps();     // fpsの調整

	bool loadMedia();	// イメージの読込

private:
	bool running;
	SDL_Window* window;
	SDL_Renderer* renderer;

	const char* spriteFileName = "hiyoco_nomal_full.png";
	static const unsigned int MAXFRAME = 3;

	int frame = 0;					// 現在のフレーム数
	int countFrame = 0;				// フレーム調整用

	SDL_Texture* spriteTex;			// スプライトシート用テクスチャ
	SDL_Rect spriteClips[MAXFRAME];	// クリップ スプライトの座標、幅、高さ
	SDL_Rect dstRect;				// 描画先座標
};

