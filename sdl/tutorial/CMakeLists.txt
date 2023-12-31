# 実行ファイルをexeフォルダの中につくる
# cmake .
# make
# 実行ファイルはexeフォルダ内に移動してから実行しないと動かないかもしれません

cmake_minimum_required(VERSION 2.8)

# 実行ファイルの出力先
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ./exe)

add_executable(01_hello_sdl 01_hello_sdl.cpp)
target_link_libraries(01_hello_sdl SDL2)

add_executable(02_getting_an_image_on_the_screen 02_getting_an_image_on_the_screen.cpp)
target_link_libraries(02_getting_an_image_on_the_screen SDL2)

add_executable(03_event_driven_programming 03_event_driven_programming.cpp)
target_link_libraries(03_event_driven_programming SDL2)

add_executable(04_key_presses 04_key_presses.cpp)
target_link_libraries(04_key_presses SDL2)

add_executable(05_optimized_surface_loading_and_soft_stretching 05_optimized_surface_loading_and_soft_stretching.cpp)
target_link_libraries(05_optimized_surface_loading_and_soft_stretching SDL2)

add_executable(06_extension_libraries_and_loading_other_image_formats 06_extension_libraries_and_loading_other_image_formats.cpp)
target_link_libraries(06_extension_libraries_and_loading_other_image_formats SDL2 SDL2_image)

add_executable(07_texture_loading_and_rendering 07_texture_loading_and_rendering.cpp)
target_link_libraries(07_texture_loading_and_rendering SDL2 SDL2_image)

add_executable(09_the_viewport 09_the_viewport.cpp)
target_link_libraries(09_the_viewport SDL2 SDL2_image)

add_executable(10_color_keying 10_color_keying.cpp)
target_link_libraries(10_color_keying SDL2 SDL2_image)

add_executable(11_clip_rendering_and_sprite_sheets 11_clip_rendering_and_sprite_sheets.cpp)
target_link_libraries(11_clip_rendering_and_sprite_sheets SDL2 SDL2_image)

add_executable(12_color_modulation 12_color_modulation.cpp)
target_link_libraries(12_color_modulation SDL2 SDL2_image)

add_executable(13_alpha_blending 13_alpha_blending.cpp)
target_link_libraries(13_alpha_blending SDL2 SDL2_image)

add_executable(14_animated_sprites_and_vsync 14_animated_sprites_and_vsync.cpp)
target_link_libraries(14_animated_sprites_and_vsync SDL2 SDL2_image)

add_executable(15_rotation_and_flipping 15_rotation_and_flipping.cpp)
target_link_libraries(15_rotation_and_flipping SDL2 SDL2_image)

add_executable(16_true_type_fonts 16_true_type_fonts.cpp)
target_link_libraries(16_true_type_fonts SDL2 SDL2_image SDL2_ttf)

add_executable(17_mouse_events 17_mouse_events.cpp)
target_link_libraries(17_mouse_events SDL2 SDL2_image)

add_executable(18_key_states 18_key_states.cpp)
target_link_libraries(18_key_states SDL2 SDL2_image)

add_executable(19_gamepads_and_joysticks 19_gamepads_and_joysticks.cpp)
target_link_libraries(19_gamepads_and_joysticks SDL2 SDL2_image)

add_executable(20_force_feedback 20_force_feedback.cpp)
target_link_libraries(20_force_feedback SDL2 SDL2_image)

add_executable(21_sound_effects_and_music 21_sound_effects_and_music.cpp)
target_link_libraries(21_sound_effects_and_music SDL2 SDL2_image SDL2_mixer)

add_executable(22_timing 22_timing.cpp)
target_link_libraries(22_timing SDL2 SDL2_image SDL2_ttf)

add_executable(23_advanced_timers 23_advanced_timers.cpp)
target_link_libraries(23_advanced_timers SDL2 SDL2_image SDL2_ttf)

add_executable(24_calculating_frame_rate 24_calculating_frame_rate.cpp)
target_link_libraries(24_calculating_frame_rate SDL2 SDL2_image SDL2_ttf)

add_executable(25_capping_frame_rate 25_capping_frame_rate.cpp)
target_link_libraries(25_capping_frame_rate SDL2 SDL2_image SDL2_ttf)

add_executable(26_motion 26_motion.cpp)
target_link_libraries(26_motion SDL2 SDL2_image)

add_executable(27_collision_detection 27_collision_detection.cpp)
target_link_libraries(27_collision_detection SDL2 SDL2_image)

add_executable(28_per-pixel_collision_detection 28_per-pixel_collision_detection.cpp)
target_link_libraries(28_per-pixel_collision_detection SDL2 SDL2_image)

add_executable(29_circular_collision_detection 29_circular_collision_detection.cpp)
target_link_libraries(29_circular_collision_detection SDL2 SDL2_image)

add_executable(30_scrolling 30_scrolling.cpp)
target_link_libraries(30_scrolling SDL2 SDL2_image)

add_executable(31_scrolling_backgrounds 31_scrolling_backgrounds.cpp)
target_link_libraries(31_scrolling_backgrounds SDL2 SDL2_image)

add_executable(32_text_input_and_clipboard_handling 32_text_input_and_clipboard_handling.cpp)
target_link_libraries(32_text_input_and_clipboard_handling SDL2 SDL2_image SDL2_ttf)

add_executable(33_file_reading_and_writing 33_file_reading_and_writing.cpp)
target_link_libraries(33_file_reading_and_writing SDL2 SDL2_image SDL2_ttf)

add_executable(34_audio_recording 34_audio_recording.cpp)
target_link_libraries(34_audio_recording SDL2 SDL2_image SDL2_ttf)

add_executable(35_window_events 35_window_events.cpp)
target_link_libraries(35_window_events SDL2 SDL2_image)

add_executable(36_multiple_windows 36_multiple_windows.cpp)
target_link_libraries(36_multiple_windows SDL2)

add_executable(37_multiple_displays 37_multiple_displays.cpp)
target_link_libraries(37_multiple_displays SDL2)

add_executable(38_particle_engines 38_particle_engines.cpp)
target_link_libraries(38_particle_engines SDL2 SDL2_image)

add_executable(39_tiling 39_tiling.cpp)
target_link_libraries(39_tiling SDL2 SDL2_image)

add_executable(40_texture_manipulation 40_texture_manipulation.cpp)
target_link_libraries(40_texture_manipulation SDL2 SDL2_image)

add_executable(41_bitmap_fonts 41_bitmap_fonts.cpp)
target_link_libraries(41_bitmap_fonts SDL2 SDL2_image)

add_executable(42_texture_streaming 42_texture_streaming.cpp)
target_link_libraries(42_texture_streaming SDL2 SDL2_image)

add_executable(43_render_to_texture 43_render_to_texture.cpp)
target_link_libraries(43_render_to_texture SDL2 SDL2_image)

add_executable(44_frame_independent_movement 44_frame_independent_movement.cpp)
target_link_libraries(44_frame_independent_movement SDL2 SDL2_image)

add_executable(45_timer_callbacks 45_timer_callbacks.cpp)
target_link_libraries(45_timer_callbacks SDL2 SDL2_image)

add_executable(46_multithreading 46_multithreading.cpp)
target_link_libraries(46_multithreading SDL2 SDL2_image)

add_executable(47_semaphores 47_semaphores.cpp)
target_link_libraries(47_semaphores SDL2 SDL2_image)

add_executable(48_atomic_operations 48_atomic_operations.cpp)
target_link_libraries(48_atomic_operations SDL2 SDL2_image)

add_executable(49_mutexes_and_conditions 49_mutexes_and_conditions.cpp)
target_link_libraries(49_mutexes_and_conditions SDL2 SDL2_image)

# OpenGL系のライブラリ（GLU.h）（かな？）のバージョンを合わせるのが面倒なのでスキップ
#add_executable(50_SDL_and_opengl_2 50_SDL_and_opengl_2.cpp)
#target_link_libraries(50_SDL_and_opengl_2 SDL2 GLEW GL)

add_executable(51_SDL_and_modern_opengl 51_SDL_and_modern_opengl.cpp)
target_link_libraries(51_SDL_and_modern_opengl SDL2 GLEW GL)

# 追加用
#add_executable()
#target_link_libraries( SDL2 SDL2_image)

