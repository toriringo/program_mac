#include "gamemain.hpp"
#include <iostream>
#include <string>

GAME::GAME() {
	init();
}

GAME::~GAME() {
	cleanup();
}

/*-----------------------------------------------------------------------------
 *  初期化
 *-----------------------------------------------------------------------------
 */
int GAME::init() {
	// SDL2の初期化
	if (SDL_Init(SDL_INIT_EVERYTHING) < 0) {
		return 1;
	}

	// SDL_Imageの初期化
	if (IMG_Init(IMG_INIT_PNG) < 0) {
		return 1;
	}
	
	// Windowを生成する
	window = SDL_CreateWindow(
		u8"アニメーション サンプル",
		SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
		640, 480,
		0
	);

	if (window == NULL) {
		std::cout << "ERROR : " << SDL_GetError() << std::endl;
		return 1;
	}

	// Rendererを生成する
	renderer = SDL_CreateRenderer(
		window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);

	// ループフラグ
	running = true;

	return 0;
}

/*-----------------------------------------------------------------------------
 *  後処理
 *-----------------------------------------------------------------------------
 */
void GAME::cleanup() {
	SDL_DestroyTexture(spriteTex);
	SDL_DestroyRenderer(renderer);
	SDL_DestroyWindow(window);
	IMG_Quit();
	SDL_Quit();
}

/*-----------------------------------------------------------------------------
 *  イベントを処理する
 *-----------------------------------------------------------------------------
 */
void GAME::event() {
	SDL_Event event;

	// イベントがなくなるまでループする
	while (SDL_PollEvent(&event) == 1) {
		if (event.type == SDL_QUIT) {
			// 終了
			running = false;
		}

		// ここにキー入力の処理等を書く
		if(event.type == SDL_KEYDOWN){
			switch (event.key.keysym.sym)
			{
			case SDLK_ESCAPE:	// ESC 終了フラグを立てる
				running = false;
				break;
			default:
				break;
			}
		}
	}
}

/*-----------------------------------------------------------------------------
 *  データを更新する
 *------------------------------------------------------------------------------
 */
void GAME::update() {
	
	// フレーム数更新
	if (countFrame == 4) {
		// 調整：4フレーム毎に描画
		++frame;
		if(frame >= MAXFRAME){
			frame = 0; //最初に戻る
		}

		// 座標更新
		dstRect.x += 10;
		dstRect.y += 5;

		countFrame = 0;
	}
	++countFrame;
}

/*-----------------------------------------------------------------------------
 *  描画する
 *-----------------------------------------------------------------------------
 */
void GAME::render() {

	// クリア
	SDL_SetRenderDrawColor(renderer, 0xff, 0xff, 0xff, 0xFF);
	SDL_RenderClear(renderer);

	// 描画
	SDL_RenderCopy(renderer, spriteTex, &spriteClips[frame], &dstRect);

	// ウィンドウへ送る
	SDL_RenderPresent(renderer);

}

/*-----------------------------------------------------------------------------
 *  FPSの調整をする
 *-----------------------------------------------------------------------------
 */
void GAME::fps() {}

/*-----------------------------------------------------------------------------
 *  イメージの読み込みと、クリップの初期化をする
 *-----------------------------------------------------------------------------
 */
bool GAME::loadMedia()
{
	auto tmpSurface = IMG_Load(spriteFileName);
	if (tmpSurface == NULL) {
		return false;
	}

	// テクスチャ
	spriteTex = SDL_CreateTextureFromSurface(renderer, tmpSurface);

	SDL_FreeSurface(tmpSurface);


	// spriteClipsの初期化
	spriteClips[0].h = 32;
	spriteClips[0].w = 32;
	spriteClips[0].x = 0;
	spriteClips[0].y = 0;

	spriteClips[1].h = 32;
	spriteClips[1].w = 32;
	spriteClips[1].x = 32 * 2;
	spriteClips[1].y = 0;

	spriteClips[2].h = 32;
	spriteClips[2].w = 32;
	spriteClips[2].x = 32 * 3;
	spriteClips[2].y = 0;

	// 描画先
	dstRect.h = 32 * 6; // 元サイズの6倍
	dstRect.w = 32 * 6;
	dstRect.x = 0;
	dstRect.y = 0;

	return true;
}

