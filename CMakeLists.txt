cmake_minimum_required(VERSION 3.31.5)

project("openal")

enable_language(C)
enable_language(CXX)

set(CMAKE_CXX_STANDARD 20)

set(CAMKE_C_STANDARD 17)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -pipe -integrated-as -mllvm -polly -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-invariant-load-hoisting -flto=thin -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-parallel -mllvm -polly-scheduling=dynamic -flto=thin -fno-emulated-tls -fwhole-program-vtables -fdata-sections -ffunction-sections -fmerge-all-constants -mllvm -polly-detect-keep-going -mllvm -polly-ast-use-context -march=armv8-a+simd -fPIC -DPIC -ferror-limit=0 -Wno-return-type -Wno-unused-parameter -Wno-c++98-compat -Wno-c++98-compat-pedantic")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -pipe -integrated-as -mllvm -polly -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-invariant-load-hoisting -flto=thin -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-parallel -mllvm -polly-scheduling=dynamic -flto=thin -fno-emulated-tls -fwhole-program-vtables -fdata-sections -ffunction-sections -fmerge-all-constants -mllvm -polly-detect-keep-going -mllvm -polly-ast-use-context -march=armv8-a+simd -fPIC -DPIC -ferror-limit=0 -Wno-return-type -Wno-unused-parameter -Wno-c++98-compat -Wno-c++98-compat-pedantic")
set(LINK_OPTIONS "${CMAKE_LINK_OPTIONS} -fuse-ld=lld -flto=thin -Wl,-plugin-opt=-emulated-tls=0")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_LINK_OPTIONS} -fuse-ld=lld -flto=thin -Wl,-plugin-opt=-emulated-tls=0")
set(CMAKE_ANDROID_STL_TYPE system)
set(CMAKE_ANDROID_LD "lld")

set(CMAKE_BUILD_TYPE Release)

if(COMMAND CMAKE_POLICY)
    cmake_policy(SET CMP0003 NEW)
    cmake_policy(SET CMP0005 NEW)
    if(POLICY CMP0020)
        cmake_policy(SET CMP0020 NEW)
    endif(POLICY CMP0020)
    if(POLICY CMP0042)
        cmake_policy(SET CMP0042 NEW)
    endif(POLICY CMP0042)
    if(POLICY CMP0054)
        cmake_policy(SET CMP0054 NEW)
    endif(POLICY CMP0054)
    if(POLICY CMP0058)
        cmake_policy(SET CMP0058 NEW)
    endif(POLICY CMP0058)
    if(POLICY CMP0063)
        cmake_policy(SET CMP0063 NEW)
    endif(POLICY CMP0063)
    if(POLICY CMP0075)
        cmake_policy(SET CMP0075 NEW)
    endif(POLICY CMP0075)
    if(POLICY CMP0092)
        cmake_policy(SET CMP0092 NEW)
    endif(POLICY CMP0092)
    if(POLICY CMP0117)
        cmake_policy(SET CMP0117 NEW)
    endif(POLICY CMP0117)
    if(POLICY CMP0155)
        cmake_policy(SET CMP0155 NEW)
    endif(POLICY CMP0155)
endif(COMMAND CMAKE_POLICY)

add_library(${CMAKE_PROJECT_NAME} SHARED
    al/auxeffectslot.cpp
    al/auxeffectslot.h
    al/buffer.cpp
    al/buffer.h
    al/effect.cpp
    al/effect.h
    al/error.cpp
    al/event.cpp
    al/event.h
    al/extension.cpp
    al/filter.cpp
    al/filter.h
    al/listener.cpp
    al/listener.h
    al/source.cpp
    al/source.h
    al/state.cpp
    alc/alc.cpp
    alc/alu.cpp
    alc/alu.h
    alc/alconfig.cpp
    alc/alconfig.h
    alc/device.cpp
    alc/device.h
    alc/effects/base.h
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
    alc/export_list.h
    alc/inprogext.h
    alc/panning.cpp
    alc/backends/opensl.cpp
    alc/backends/opensl.h)

target_link_libraries(${CMAKE_PROJECT_NAME}
        OpenSLES)

target_include_directories(openal PRIVATE
         ${CMAKE_CURRENT_SOURCE_DIR}
         ${CMAKE_CURRENT_SOURCE_DIR}/include
         ${CMAKE_CURRENT_SOURCE_DIR}/include/AL
         ${CMAKE_CURRENT_SOURCE_DIR}/al
         ${CMAKE_CURRENT_SOURCE_DIR}/alc
         ${CMAKE_CURRENT_SOURCE_DIR}/common
         ${CMAKE_CURRENT_SOURCE_DIR}/core)

target_include_directories(openal INTERFACE
         ${CMAKE_CURRENT_SOURCE_DIR}/include)


target_include_directories(openal STATIC
         ${CMAKE_CURRENT_SOURCE_DIR}/fmt-11.1.4/include)
