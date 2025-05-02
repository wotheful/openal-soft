cmake_minimum_required(VERSION 3.31.5)

project("openal")

enable_language(C)
enable_language(CXX)

set(CMAKE_CXX_STANDARD 23)

set(CAMKE_C_STANDARD 17)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -pipe -integrated-as -mllvm -polly -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-invariant-load-hoisting -flto=thin -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-parallel -mllvm -polly-scheduling=dynamic -flto=thin -fno-emulated-tls -fwhole-program-vtables -fdata-sections -ffunction-sections -fmerge-all-constants -mllvm -polly-detect-keep-going -mllvm -polly-ast-use-context -march=armv8-a+simd -fvisibility=hidden -Wall -Wextra -fPIC -DPIC -ferror-limit=0 -Wno-return-type -Wno-unused-parameter -Wno-c++98-compat -Wno-c++98-compat-pedantic -DALSOFT_UTILS=ON -DALSOFT_NO_CONFIG_UTIL=ON")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -pipe -integrated-as -mllvm -polly -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-invariant-load-hoisting -flto=thin -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-parallel -mllvm -polly-scheduling=dynamic -flto=thin -fno-emulated-tls -fwhole-program-vtables -fdata-sections -ffunction-sections -fmerge-all-constants -mllvm -polly-detect-keep-going -mllvm -polly-ast-use-context -march=armv8-a+simd -fvisibility=hidden -fPIC -DPIC -Wall -Wextra -ferror-limit=0 -Wno-return-type -Wno-unused-parameter -Wno-c++98-compat -Wno-c++98-compat-pedantic -DALSOFT_UTILS=ON -DALSOFT_NO_CONFIG_UTIL=ON")
set(LINK_OPTIONS "${CMAKE_LINK_OPTIONS} -fuse-ld=lld -flto=thin -Wl,-plugin-opt=-emulated-tls=0")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_LINK_OPTIONS} -fuse-ld=lld -flto=thin -Wl,-plugin-opt=-emulated-tls=0")
set(CMAKE_ANDROID_STL_TYPE system)
set(CMAKE_ANDROID_LD "lld")

set(CMAKE_BUILD_TYPE Release)

add_library(${CMAKE_PROJECT_NAME} SHARED
    al/auxeffectslot.cpp
    al/buffer.cpp
    al/debug.cpp
    al/effect.cpp
    al/effects/autowah.cpp
    al/effects/chorus.cpp
    al/effects/compressor.cpp
    al/effects/convolution.cpp
    al/effects/dedicated.cpp
    al/effects/distortion.cpp
    al/effects/echo.cpp
    al/effects/effects.cpp
    al/effects/equalizer.cpp
    al/effects/fshifter.cpp
    al/effects/modulator.cpp
    al/effects/null.cpp
    al/effects/pshifter.cpp
    al/effects/reverb.cpp
    al/effects/vmorpher.cpp
    al/error.cpp
    al/event.cpp
    al/extension.cpp
    al/filter.cpp
    al/listener.cpp
    al/source.cpp
    al/state.cpp
    alc/alc.cpp
    alc/alu.cpp
    alc/alconfig.cpp
    alc/context.cpp
    alc/device.cpp
    alc/effects/autowah.cpp
    alc/effects/chorus.cpp
    alc/effects/compressor.cpp
    alc/effects/convolution.cpp
    alc/effects/dedicated.cpp
    alc/effects/distortion.cpp
    alc/effects/echo.cpp
    alc/effects/equalizer.cpp
    alc/effects/fshifter.cpp
    alc/effects/modulator.cpp
    alc/effects/null.cpp
    alc/effects/pshifter.cpp
    alc/effects/reverb.cpp
    alc/effects/vmorpher.cpp
    alc/backends/base.cpp
    alc/backends/loopback.cpp
    alc/backends/null.cpp
    alc/backends/opensl.cpp
    alc/events.cpp
    alc/panning.cpp)

target_include_directories(${CMAKE_PROJECT_NAME} PRIVATE
        ./
        ./include
        ./include/AL
        ./al
        ./alc
        ./common
        ./core
        ./fmt-11.1.4/include)

target_link_libraries(${CMAKE_PROJECT_NAME}
        OpenSLES)

target_include_directories(openal PUBLIC
        ${CMAKE_SOURCE_DIR}/include)
