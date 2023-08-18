; ModuleID = '14_animated_sprites_and_vsync.cpp'
source_filename = "14_animated_sprites_and_vsync.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%struct.SDL_Window = type opaque
%struct.SDL_Renderer = type opaque
%struct.SDL_Rect = type { i32, i32, i32, i32 }
%class.LTexture = type { %struct.SDL_Texture*, i32, i32 }
%struct.SDL_Texture = type opaque
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%struct.SDL_Surface = type { i32, %struct.SDL_PixelFormat*, i32, i32, i32, i8*, i8*, i32, i8*, %struct.SDL_Rect, %struct.SDL_BlitMap*, i32 }
%struct.SDL_PixelFormat = type { i32, %struct.SDL_Palette*, i8, i8, [2 x i8], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.SDL_PixelFormat* }
%struct.SDL_Palette = type { i32, %struct.SDL_Color*, i32, i32 }
%struct.SDL_Color = type { i8, i8, i8, i8 }
%struct.SDL_BlitMap = type opaque
%union.SDL_Event = type { %struct.SDL_TouchFingerEvent, [8 x i8] }
%struct.SDL_TouchFingerEvent = type { i32, i32, i64, i64, float, float, float, float, float, i32 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.0, [23 x i8] }
%union.anon.0 = type { i8 }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.1" = type { i8 }
%"class.std::__1::allocator" = type { i8 }

@gWindow = global %struct.SDL_Window* null, align 8
@gRenderer = global %struct.SDL_Renderer* null, align 8
@gSpriteClips = global [30 x %struct.SDL_Rect] zeroinitializer, align 16
@gSpriteSheetTexture = global %class.LTexture zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [46 x i8] c"Unable to load image %s! SDL_image Error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Unable to create texture from %s! SDL Error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"SDL could not initialize! SDL Error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"SDL_RENDER_SCALE_QUALITY\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Warning: Linear texture filtering not enabled!\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"SDL Tutorial\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Window could not be created! SDL Error: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Renderer could not be created! SDL Error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"SDL_image could not initialize! SDL_image Error: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"./spr_Attack_strip.png\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Failed to load walking animation texture!\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Failed to initialize!\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Failed to load media!\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_14_animated_sprites_and_vsync.cpp, i8* null }]
; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init() #0 section "__TEXT,__StaticInit,regular,pure_instructions" {
  call void @_ZN8LTextureC1Ev(%class.LTexture* @gSpriteSheetTexture)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.LTexture*)* @_ZN8LTextureD1Ev to void (i8*)*), i8* bitcast (%class.LTexture* @gSpriteSheetTexture to i8*), i8* @__dso_handle) #3
  ret void
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN8LTextureC1Ev(%class.LTexture* %0) unnamed_addr #1 align 2 {
  %2 = alloca %class.LTexture*, align 8
  store %class.LTexture* %0, %class.LTexture** %2, align 8
  %3 = load %class.LTexture*, %class.LTexture** %2, align 8
  call void @_ZN8LTextureC2Ev(%class.LTexture* %3)
  ret void
}
; Function Attrs: noinline optnone ssp uwtable
define void @_ZN8LTextureD1Ev(%class.LTexture* %0) unnamed_addr #2 align 2 {
  %2 = alloca %class.LTexture*, align 8
  store %class.LTexture* %0, %class.LTexture** %2, align 8
  %3 = load %class.LTexture*, %class.LTexture** %2, align 8
  call void @_ZN8LTextureD2Ev(%class.LTexture* %3)
  ret void
}
; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3
; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN8LTextureC2Ev(%class.LTexture* %0) unnamed_addr #1 align 2 {
  %2 = alloca %class.LTexture*, align 8
  store %class.LTexture* %0, %class.LTexture** %2, align 8
  %3 = load %class.LTexture*, %class.LTexture** %2, align 8
  %4 = getelementptr inbounds %class.LTexture, %class.LTexture* %3, i32 0, i32 0
  store %struct.SDL_Texture* null, %struct.SDL_Texture** %4, align 8
  %5 = getelementptr inbounds %class.LTexture, %class.LTexture* %3, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %class.LTexture, %class.LTexture* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  ret void
}
; Function Attrs: noinline optnone ssp uwtable
define void @_ZN8LTextureD2Ev(%class.LTexture* %0) unnamed_addr #2 align 2 {
  %2 = alloca %class.LTexture*, align 8
  store %class.LTexture* %0, %class.LTexture** %2, align 8
  %3 = load %class.LTexture*, %class.LTexture** %2, align 8
  call void @_ZN8LTexture4freeEv(%class.LTexture* %3)
  ret void
}
; Function Attrs: noinline optnone ssp uwtable
define void @_ZN8LTexture4freeEv(%class.LTexture* %0) #2 align 2 {
  %2 = alloca %class.LTexture*, align 8
  store %class.LTexture* %0, %class.LTexture** %2, align 8
  %3 = load %class.LTexture*, %class.LTexture** %2, align 8
  %4 = getelementptr inbounds %class.LTexture, %class.LTexture* %3, i32 0, i32 0
  %5 = load %struct.SDL_Texture*, %struct.SDL_Texture** %4, align 8
  %6 = icmp ne %struct.SDL_Texture* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.LTexture, %class.LTexture* %3, i32 0, i32 0
  %9 = load %struct.SDL_Texture*, %struct.SDL_Texture** %8, align 8
  call void @SDL_DestroyTexture(%struct.SDL_Texture* %9)
  %10 = getelementptr inbounds %class.LTexture, %class.LTexture* %3, i32 0, i32 0
  store %struct.SDL_Texture* null, %struct.SDL_Texture** %10, align 8
  %11 = getelementptr inbounds %class.LTexture, %class.LTexture* %3, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %class.LTexture, %class.LTexture* %3, i32 0, i32 2
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %7, %1
  ret void
}
; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_ZN8LTexture12loadFromFileENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(%class.LTexture* %0, %"class.std::__1::basic_string"* %1) #2 align 2 {
  %3 = alloca %class.LTexture*, align 8
  %4 = alloca %struct.SDL_Texture*, align 8
  %5 = alloca %struct.SDL_Surface*, align 8
  store %class.LTexture* %0, %class.LTexture** %3, align 8
  %6 = load %class.LTexture*, %class.LTexture** %3, align 8
  call void @_ZN8LTexture4freeEv(%class.LTexture* %6)
  store %struct.SDL_Texture* null, %struct.SDL_Texture** %4, align 8
  %7 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* %1) #3
  %8 = call %struct.SDL_Surface* @IMG_Load(i8* %7)
  store %struct.SDL_Surface* %8, %struct.SDL_Surface** %5, align 8
  %9 = load %struct.SDL_Surface*, %struct.SDL_Surface** %5, align 8
  %10 = icmp eq %struct.SDL_Surface* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* %1) #3
  %13 = call i8* @SDL_GetError()
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.SDL_Surface*, %struct.SDL_Surface** %5, align 8
  %17 = load %struct.SDL_Surface*, %struct.SDL_Surface** %5, align 8
  %18 = getelementptr inbounds %struct.SDL_Surface, %struct.SDL_Surface* %17, i32 0, i32 1
  %19 = load %struct.SDL_PixelFormat*, %struct.SDL_PixelFormat** %18, align 8
  %20 = call i32 @SDL_MapRGB(%struct.SDL_PixelFormat* %19, i8 zeroext 0, i8 zeroext -1, i8 zeroext -1)
  %21 = call i32 @SDL_SetColorKey(%struct.SDL_Surface* %16, i32 1, i32 %20)
  %22 = load %struct.SDL_Renderer*, %struct.SDL_Renderer** @gRenderer, align 8
  %23 = load %struct.SDL_Surface*, %struct.SDL_Surface** %5, align 8
  %24 = call %struct.SDL_Texture* @SDL_CreateTextureFromSurface(%struct.SDL_Renderer* %22, %struct.SDL_Surface* %23)
  store %struct.SDL_Texture* %24, %struct.SDL_Texture** %4, align 8
  %25 = load %struct.SDL_Texture*, %struct.SDL_Texture** %4, align 8
  %26 = icmp eq %struct.SDL_Texture* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* %1) #3
  %29 = call i8* @SDL_GetError()
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %29)
  br label %40

31:                                               ; preds = %15
  %32 = load %struct.SDL_Surface*, %struct.SDL_Surface** %5, align 8
  %33 = getelementptr inbounds %struct.SDL_Surface, %struct.SDL_Surface* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %class.LTexture, %class.LTexture* %6, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load %struct.SDL_Surface*, %struct.SDL_Surface** %5, align 8
  %37 = getelementptr inbounds %struct.SDL_Surface, %struct.SDL_Surface* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %class.LTexture, %class.LTexture* %6, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %27
  %41 = load %struct.SDL_Surface*, %struct.SDL_Surface** %5, align 8
  call void @SDL_FreeSurface(%struct.SDL_Surface* %41)
  br label %42

42:                                               ; preds = %40, %11
  %43 = load %struct.SDL_Texture*, %struct.SDL_Texture** %4, align 8
  %44 = getelementptr inbounds %class.LTexture, %class.LTexture* %6, i32 0, i32 0
  store %struct.SDL_Texture* %43, %struct.SDL_Texture** %44, align 8
  %45 = getelementptr inbounds %class.LTexture, %class.LTexture* %6, i32 0, i32 0
  %46 = load %struct.SDL_Texture*, %struct.SDL_Texture** %45, align 8
  %47 = icmp ne %struct.SDL_Texture* %46, null
  ret i1 %47
}
declare %struct.SDL_Surface* @IMG_Load(i8*) #4
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* %0) #1 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %3) #3
  ret i8* %4
}
declare i32 @printf(i8*, ...) #4
declare i8* @SDL_GetError() #4
declare i32 @SDL_SetColorKey(%struct.SDL_Surface*, i32, i32) #4
declare i32 @SDL_MapRGB(%struct.SDL_PixelFormat*, i8 zeroext, i8 zeroext, i8 zeroext) #4
declare %struct.SDL_Texture* @SDL_CreateTextureFromSurface(%struct.SDL_Renderer*, %struct.SDL_Surface*) #4
declare void @SDL_FreeSurface(%struct.SDL_Surface*) #4
declare void @SDL_DestroyTexture(%struct.SDL_Texture*) #4
; Function Attrs: noinline optnone ssp uwtable
define void @_ZN8LTexture8setColorEhhh(%class.LTexture* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #2 align 2 {
  %5 = alloca %class.LTexture*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %class.LTexture* %0, %class.LTexture** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %9 = load %class.LTexture*, %class.LTexture** %5, align 8
  %10 = getelementptr inbounds %class.LTexture, %class.LTexture* %9, i32 0, i32 0
  %11 = load %struct.SDL_Texture*, %struct.SDL_Texture** %10, align 8
  %12 = load i8, i8* %6, align 1
  %13 = load i8, i8* %7, align 1
  %14 = load i8, i8* %8, align 1
  %15 = call i32 @SDL_SetTextureColorMod(%struct.SDL_Texture* %11, i8 zeroext %12, i8 zeroext %13, i8 zeroext %14)
  ret void
}
declare i32 @SDL_SetTextureColorMod(%struct.SDL_Texture*, i8 zeroext, i8 zeroext, i8 zeroext) #4
; Function Attrs: noinline optnone ssp uwtable
define void @_ZN8LTexture12setBlendModeE13SDL_BlendMode(%class.LTexture* %0, i32 %1) #2 align 2 {
  %3 = alloca %class.LTexture*, align 8
  %4 = alloca i32, align 4
  store %class.LTexture* %0, %class.LTexture** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.LTexture*, %class.LTexture** %3, align 8
  %6 = getelementptr inbounds %class.LTexture, %class.LTexture* %5, i32 0, i32 0
  %7 = load %struct.SDL_Texture*, %struct.SDL_Texture** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @SDL_SetTextureBlendMode(%struct.SDL_Texture* %7, i32 %8)
  ret void
}
declare i32 @SDL_SetTextureBlendMode(%struct.SDL_Texture*, i32) #4
; Function Attrs: noinline optnone ssp uwtable
define void @_ZN8LTexture8setAlphaEh(%class.LTexture* %0, i8 zeroext %1) #2 align 2 {
  %3 = alloca %class.LTexture*, align 8
  %4 = alloca i8, align 1
  store %class.LTexture* %0, %class.LTexture** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %class.LTexture*, %class.LTexture** %3, align 8
  %6 = getelementptr inbounds %class.LTexture, %class.LTexture* %5, i32 0, i32 0
  %7 = load %struct.SDL_Texture*, %struct.SDL_Texture** %6, align 8
  %8 = load i8, i8* %4, align 1
  %9 = call i32 @SDL_SetTextureAlphaMod(%struct.SDL_Texture* %7, i8 zeroext %8)
  ret void
}
declare i32 @SDL_SetTextureAlphaMod(%struct.SDL_Texture*, i8 zeroext) #4
; Function Attrs: noinline optnone ssp uwtable
define void @_ZN8LTexture6renderEiiP8SDL_Rect(%class.LTexture* %0, i32 %1, i32 %2, %struct.SDL_Rect* %3) #2 align 2 {
  %5 = alloca %class.LTexture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.SDL_Rect*, align 8
  %9 = alloca %struct.SDL_Rect, align 4
  store %class.LTexture* %0, %class.LTexture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.SDL_Rect* %3, %struct.SDL_Rect** %8, align 8
  %10 = load %class.LTexture*, %class.LTexture** %5, align 8
  %11 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %9, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %9, i32 0, i32 1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %9, i32 0, i32 2
  %16 = getelementptr inbounds %class.LTexture, %class.LTexture* %10, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %9, i32 0, i32 3
  %19 = getelementptr inbounds %class.LTexture, %class.LTexture* %10, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %18, align 4
  %21 = load %struct.SDL_Rect*, %struct.SDL_Rect** %8, align 8
  %22 = icmp ne %struct.SDL_Rect* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.SDL_Rect*, %struct.SDL_Rect** %8, align 8
  %25 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %9, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.SDL_Rect*, %struct.SDL_Rect** %8, align 8
  %29 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %9, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %4
  %33 = load %struct.SDL_Renderer*, %struct.SDL_Renderer** @gRenderer, align 8
  %34 = getelementptr inbounds %class.LTexture, %class.LTexture* %10, i32 0, i32 0
  %35 = load %struct.SDL_Texture*, %struct.SDL_Texture** %34, align 8
  %36 = load %struct.SDL_Rect*, %struct.SDL_Rect** %8, align 8
  %37 = call i32 @SDL_RenderCopy(%struct.SDL_Renderer* %33, %struct.SDL_Texture* %35, %struct.SDL_Rect* %36, %struct.SDL_Rect* %9)
  ret void
}
declare i32 @SDL_RenderCopy(%struct.SDL_Renderer*, %struct.SDL_Texture*, %struct.SDL_Rect*, %struct.SDL_Rect*) #4
; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_ZN8LTexture8getWidthEv(%class.LTexture* %0) #1 align 2 {
  %2 = alloca %class.LTexture*, align 8
  store %class.LTexture* %0, %class.LTexture** %2, align 8
  %3 = load %class.LTexture*, %class.LTexture** %2, align 8
  %4 = getelementptr inbounds %class.LTexture, %class.LTexture* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_ZN8LTexture9getHeightEv(%class.LTexture* %0) #1 align 2 {
  %2 = alloca %class.LTexture*, align 8
  store %class.LTexture* %0, %class.LTexture** %2, align 8
  %3 = load %class.LTexture*, %class.LTexture** %2, align 8
  %4 = getelementptr inbounds %class.LTexture, %class.LTexture* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}
; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z4initv() #2 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 1, i8* %1, align 1
  %3 = call i32 @SDL_Init(i32 32)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i8* @SDL_GetError()
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %6)
  store i8 0, i8* %1, align 1
  br label %42

8:                                                ; preds = %0
  %9 = call i32 @SDL_SetHint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  %14 = call %struct.SDL_Window* @SDL_CreateWindow(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 536805376, i32 536805376, i32 640, i32 480, i32 4)
  store %struct.SDL_Window* %14, %struct.SDL_Window** @gWindow, align 8
  %15 = load %struct.SDL_Window*, %struct.SDL_Window** @gWindow, align 8
  %16 = icmp eq %struct.SDL_Window* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i8* @SDL_GetError()
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %18)
  store i8 0, i8* %1, align 1
  br label %41

20:                                               ; preds = %13
  %21 = load %struct.SDL_Window*, %struct.SDL_Window** @gWindow, align 8
  %22 = call %struct.SDL_Renderer* @SDL_CreateRenderer(%struct.SDL_Window* %21, i32 -1, i32 6)
  store %struct.SDL_Renderer* %22, %struct.SDL_Renderer** @gRenderer, align 8
  %23 = load %struct.SDL_Renderer*, %struct.SDL_Renderer** @gRenderer, align 8
  %24 = icmp eq %struct.SDL_Renderer* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i8* @SDL_GetError()
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i8* %26)
  store i8 0, i8* %1, align 1
  br label %40

28:                                               ; preds = %20
  %29 = load %struct.SDL_Renderer*, %struct.SDL_Renderer** @gRenderer, align 8
  %30 = call i32 @SDL_SetRenderDrawColor(%struct.SDL_Renderer* %29, i8 zeroext -1, i8 zeroext -1, i8 zeroext -1, i8 zeroext -1)
  store i32 2, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @IMG_Init(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = call i8* @SDL_GetError()
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i8* %37)
  store i8 0, i8* %1, align 1
  br label %39

39:                                               ; preds = %36, %28
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %17
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i8, i8* %1, align 1
  %44 = trunc i8 %43 to i1
  ret i1 %44
}
declare i32 @SDL_Init(i32) #4
declare i32 @SDL_SetHint(i8*, i8*) #4
declare %struct.SDL_Window* @SDL_CreateWindow(i8*, i32, i32, i32, i32, i32) #4
declare %struct.SDL_Renderer* @SDL_CreateRenderer(%struct.SDL_Window*, i32, i32) #4
declare i32 @SDL_SetRenderDrawColor(%struct.SDL_Renderer*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #4
declare i32 @IMG_Init(i32) #4
; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z9loadMediav() #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i8, align 1
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca i32, align 4
  store i8 1, i8* %1, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%"class.std::__1::basic_string"* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %6 = invoke zeroext i1 @_ZN8LTexture12loadFromFileENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(%class.LTexture* @gSpriteSheetTexture, %"class.std::__1::basic_string"* %2)
          to label %7 unwind label %11

7:                                                ; preds = %0
  %8 = xor i1 %6, true
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %2)
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  store i8 0, i8* %1, align 1
  br label %43

11:                                               ; preds = %0
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %3, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %4, align 4
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %2)
          to label %15 unwind label %51

15:                                               ; preds = %11
  br label %46

16:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 30
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 170, %21
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [30 x %struct.SDL_Rect], [30 x %struct.SDL_Rect]* @gSpriteClips, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 16
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [30 x %struct.SDL_Rect], [30 x %struct.SDL_Rect]* @gSpriteClips, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [30 x %struct.SDL_Rect], [30 x %struct.SDL_Rect]* @gSpriteClips, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %33, i32 0, i32 2
  store i32 170, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [30 x %struct.SDL_Rect], [30 x %struct.SDL_Rect]* @gSpriteClips, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %37, i32 0, i32 3
  store i32 96, i32* %38, align 4
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %17

42:                                               ; preds = %17
  br label %43

43:                                               ; preds = %42, %9
  %44 = load i8, i8* %1, align 1
  %45 = trunc i8 %44 to i1
  ret i1 %45

46:                                               ; preds = %15
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = insertvalue { i8*, i32 } undef, i8* %47, 0
  %50 = insertvalue { i8*, i32 } %49, i32 %48, 1
  resume { i8*, i32 } %50

51:                                               ; preds = %11
  %52 = landingpad { i8*, i32 }
          catch i8* null
  %53 = extractvalue { i8*, i32 } %52, 0
  call void @__clang_call_terminate(i8* %53) #8
  unreachable
}
; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_9nullptr_tEEEPKc(%"class.std::__1::basic_string"* %0, i8* %1) unnamed_addr #2 align 2 {
  %3 = alloca %"class.std::__1::basic_string"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %3, align 8
  %6 = load i8*, i8** %4, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_9nullptr_tEEEPKc(%"class.std::__1::basic_string"* %5, i8* %6)
  ret void
}
declare i32 @__gxx_personality_v0(...)
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) unnamed_addr #4
; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #5 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #8
  unreachable
}
declare i8* @__cxa_begin_catch(i8*)
declare void @_ZSt9terminatev()
; Function Attrs: noinline optnone ssp uwtable
define void @_Z5closev() #2 {
  call void @_ZN8LTexture4freeEv(%class.LTexture* @gSpriteSheetTexture)
  %1 = load %struct.SDL_Renderer*, %struct.SDL_Renderer** @gRenderer, align 8
  call void @SDL_DestroyRenderer(%struct.SDL_Renderer* %1)
  %2 = load %struct.SDL_Window*, %struct.SDL_Window** @gWindow, align 8
  call void @SDL_DestroyWindow(%struct.SDL_Window* %2)
  store %struct.SDL_Window* null, %struct.SDL_Window** @gWindow, align 8
  store %struct.SDL_Renderer* null, %struct.SDL_Renderer** @gRenderer, align 8
  call void @IMG_Quit()
  call void @SDL_Quit()
  ret void
}
declare void @SDL_DestroyRenderer(%struct.SDL_Renderer*) #4
declare void @SDL_DestroyWindow(%struct.SDL_Window*) #4
declare void @IMG_Quit() #4
declare void @SDL_Quit() #4
; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %0, i8** %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca %union.SDL_Event, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.SDL_Rect*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call zeroext i1 @_Z4initv()
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %62

13:                                               ; preds = %2
  %14 = call zeroext i1 @_Z9loadMediav()
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %61

17:                                               ; preds = %13
  store i8 0, i8* %6, align 1
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %59, %17
  %19 = load i8, i8* %6, align 1
  %20 = trunc i8 %19 to i1
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %31, %22
  %24 = call i32 @SDL_PollEvent(%union.SDL_Event* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = bitcast %union.SDL_Event* %7 to i32*
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 256
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8 1, i8* %6, align 1
  br label %31

31:                                               ; preds = %30, %26
  br label %23

32:                                               ; preds = %23
  %33 = load %struct.SDL_Renderer*, %struct.SDL_Renderer** @gRenderer, align 8
  %34 = call i32 @SDL_SetRenderDrawColor(%struct.SDL_Renderer* %33, i8 zeroext -1, i8 zeroext -1, i8 zeroext -1, i8 zeroext -1)
  %35 = load %struct.SDL_Renderer*, %struct.SDL_Renderer** @gRenderer, align 8
  %36 = call i32 @SDL_RenderClear(%struct.SDL_Renderer* %35)
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [30 x %struct.SDL_Rect], [30 x %struct.SDL_Rect]* @gSpriteClips, i64 0, i64 %39
  store %struct.SDL_Rect* %40, %struct.SDL_Rect** %9, align 8
  %41 = load %struct.SDL_Rect*, %struct.SDL_Rect** %9, align 8
  %42 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 640, %43
  %45 = sdiv i32 %44, 2
  %46 = load %struct.SDL_Rect*, %struct.SDL_Rect** %9, align 8
  %47 = getelementptr inbounds %struct.SDL_Rect, %struct.SDL_Rect* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 480, %48
  %50 = sdiv i32 %49, 2
  %51 = load %struct.SDL_Rect*, %struct.SDL_Rect** %9, align 8
  call void @_ZN8LTexture6renderEiiP8SDL_Rect(%class.LTexture* @gSpriteSheetTexture, i32 %45, i32 %50, %struct.SDL_Rect* %51)
  %52 = load %struct.SDL_Renderer*, %struct.SDL_Renderer** @gRenderer, align 8
  call void @SDL_RenderPresent(%struct.SDL_Renderer* %52)
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sdiv i32 %55, 4
  %57 = icmp sge i32 %56, 30
  br i1 %57, label %58, label %59

58:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %32
  br label %18

60:                                               ; preds = %18
  br label %61

61:                                               ; preds = %60, %15
  br label %62

62:                                               ; preds = %61, %11
  call void @_Z5closev()
  ret i32 0
}
declare i32 @SDL_PollEvent(%union.SDL_Event*) #4
declare i32 @SDL_RenderClear(%struct.SDL_Renderer*) #4
declare void @SDL_RenderPresent(%struct.SDL_Renderer*) #4
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %0) #1 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %3) #3
  %5 = call i8* @_ZNSt3__1L12__to_addressIKcEEPT_S3_(i8* %4) #3
  ret i8* %5
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__1L12__to_addressIKcEEPT_S3_(i8* %0) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %0) #1 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %3) #3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %3) #3
  br label %9

7:                                                ; preds = %1
  %8 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %3) #3
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i8* [ %6, %5 ], [ %8, %7 ]
  ret i8* %10
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %0) #1 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %3, i32 0, i32 0
  %5 = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #3
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %5, i32 0, i32 0
  %7 = bitcast %union.anon* %6 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %8 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %7, i32 0, i32 0
  %9 = bitcast %union.anon.0* %8 to i8*
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i64
  %12 = and i64 %11, 1
  %13 = icmp ne i64 %12, 0
  ret i1 %13
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %0) #1 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %3, i32 0, i32 0
  %5 = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #3
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %5, i32 0, i32 0
  %7 = bitcast %union.anon* %6 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %8 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  ret i8* %9
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %0) #1 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %3, i32 0, i32 0
  %5 = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #3
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %5, i32 0, i32 0
  %7 = bitcast %union.anon* %6 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %8 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %7, i32 0, i32 1
  %9 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 0
  %10 = call i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* dereferenceable(1) %9) #3
  ret i8* %10
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %0) #1 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %0, %"class.std::__1::__compressed_pair"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair"* %3 to %"struct.std::__1::__compressed_pair_elem"*
  %5 = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %4) #3
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %5
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %0) #1 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %0, %"struct.std::__1::__compressed_pair_elem"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %3, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %4
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* dereferenceable(1) %0) #1 align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* dereferenceable(1) %3) #3
  ret i8* %4
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* dereferenceable(1) %0) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}
; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_9nullptr_tEEEPKc(%"class.std::__1::basic_string"* %0, i8* %1) unnamed_addr #2 align 2 {
  %3 = alloca %"class.std::__1::basic_string"*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %"struct.std::__1::__default_init_tag", align 1
  %6 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %3, align 8
  %8 = bitcast %"class.std::__1::basic_string"* %7 to %"class.std::__1::__basic_string_common"*
  %9 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %7, i32 0, i32 0
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %9, %"struct.std::__1::__default_init_tag"* dereferenceable(1) %5, %"struct.std::__1::__default_init_tag"* dereferenceable(1) %6)
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %11) #3
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %7, i8* %10, i64 %12)
  ret void
}
; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %0, %"struct.std::__1::__default_init_tag"* dereferenceable(1) %1, %"struct.std::__1::__default_init_tag"* dereferenceable(1) %2) unnamed_addr #2 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %5 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %6 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"class.std::__1::__compressed_pair"* %0, %"class.std::__1::__compressed_pair"** %4, align 8
  store %"struct.std::__1::__default_init_tag"* %1, %"struct.std::__1::__default_init_tag"** %5, align 8
  store %"struct.std::__1::__default_init_tag"* %2, %"struct.std::__1::__default_init_tag"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %4, align 8
  %8 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %5, align 8
  %9 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %6, align 8
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %7, %"struct.std::__1::__default_init_tag"* dereferenceable(1) %8, %"struct.std::__1::__default_init_tag"* dereferenceable(1) %9)
  ret void
}
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"*, i8*, i64) #4
; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %0) #1 align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strlen(i8* %3) #3
  ret i64 %4
}
; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %0, %"struct.std::__1::__default_init_tag"* dereferenceable(1) %1, %"struct.std::__1::__default_init_tag"* dereferenceable(1) %2) unnamed_addr #2 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %5 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %6 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  %8 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::__compressed_pair"* %0, %"class.std::__1::__compressed_pair"** %4, align 8
  store %"struct.std::__1::__default_init_tag"* %1, %"struct.std::__1::__default_init_tag"** %5, align 8
  store %"struct.std::__1::__default_init_tag"* %2, %"struct.std::__1::__default_init_tag"** %6, align 8
  %9 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %4, align 8
  %10 = bitcast %"class.std::__1::__compressed_pair"* %9 to %"struct.std::__1::__compressed_pair_elem"*
  %11 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %5, align 8
  %12 = call dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* dereferenceable(1) %11) #3
  call void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* %10)
  %13 = bitcast %"class.std::__1::__compressed_pair"* %9 to %"struct.std::__1::__compressed_pair_elem.1"*
  %14 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %6, align 8
  %15 = call dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* dereferenceable(1) %14) #3
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.1"* %13)
  ret void
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* dereferenceable(1) %0) #1 {
  %2 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"struct.std::__1::__default_init_tag"* %0, %"struct.std::__1::__default_init_tag"** %2, align 8
  %3 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %2, align 8
  ret %"struct.std::__1::__default_init_tag"* %3
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* %0) unnamed_addr #1 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %0, %"struct.std::__1::__compressed_pair_elem"** %3, align 8
  %4 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %4, i32 0, i32 0
  ret void
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.1"* %0) unnamed_addr #1 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %0, %"struct.std::__1::__compressed_pair_elem.1"** %3, align 8
  %4 = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %3, align 8
  %5 = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %4 to %"class.std::__1::allocator"*
  call void @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* %5) #3
  ret void
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* %0) unnamed_addr #1 align 2 {
  %2 = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %2, align 8
  %3 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %2, align 8
  ret void
}
; Function Attrs: nounwind
declare i64 @strlen(i8*) #7
; Function Attrs: noinline ssp uwtable
define internal void @_GLOBAL__sub_I_14_animated_sprites_and_vsync.cpp() #0 section "__TEXT,__StaticInit,regular,pure_instructions" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noreturn nounwind }
attributes #6 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple clang version 12.0.0 (clang-1200.0.32.28)"}
