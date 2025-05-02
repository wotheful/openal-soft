LOCAL_PATH := $(call my-dir)/..

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cpp
LOCAL_MODULE    := openal
LOCAL_SRC_FILES := \
    al/auxeffectslot.cpp \
    al/buffer.cpp \
    al/effect.cpp \
    al/error.cpp \
    al/event.cpp \
    al/extension.cpp \
    al/filter.cpp \
    al/listener.cpp \
    al/source.cpp \
    al/state.cpp \
    alc/alc.cpp \
    alc/alu.cpp \
    alc/alconfig.cpp \
    alc/bformatdec.cpp \
    alc/bsinc_tables.cpp \
    alc/buffer_storage.cpp \
    alc/converter.cpp \
    alc/cpu_caps.cpp \
    alc/effects/autowah.cpp \
    alc/effects/chorus.cpp \
    alc/effects/compressor.cpp \
    alc/effects/convolution.cpp \
    alc/effects/dedicated.cpp \
    alc/effects/distortion.cpp \
    alc/effects/echo.cpp \
    alc/effects/equalizer.cpp \
    alc/effects/fshifter.cpp \
    alc/effects/modulator.cpp \
    alc/effects/null.cpp \
    alc/effects/pshifter.cpp \
    alc/effects/reverb.cpp \
    alc/effects/vmorpher.cpp \
    alc/fmt_traits.cpp \
    alc/fpu_ctrl.cpp \
    alc/helpers.cpp \
    alc/hrtf.cpp \
    alc/mastering.cpp \
    alc/panning.cpp \
    alc/ringbuffer.cpp \
    alc/uhjfilter.cpp \
    alc/uiddefs.cpp \
    alc/voice.cpp \
    alc/backends/oboe.cpp \
    alc/backends/opensl.cpp
#   alc/mixer/mixer_neon.cpp.neon \
    
LOCAL_CFLAGS := -fno-plt -O3 -pipe -integrated-as -mllvm -polly -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-invariant-load-hoisting -flto=thin -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-parallel -mllvm -polly-scheduling=dynamic -flto=thin -fno-emulated-tls -fwhole-program-vtables -fdata-sections -ffunction-sections -fmerge-all-constants -mllvm -polly-detect-keep-going -mllvm -polly-ast-use-context -march=armv8-a+simd -fPIC -DPIC -std=c17
LOCAL_CPPLAGS := -fno-exceptions -fno-plt -O3 -pipe -integrated-as -mllvm -polly -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-invariant-load-hoisting -flto=thin -mllvm -polly-run-inliner -mllvm -polly-run-dce -mllvm -polly-parallel -mllvm -polly-scheduling=dynamic -flto=thin -fno-emulated-tls -fwhole-program-vtables -fdata-sections -ffunction-sections -fmerge-all-constants -mllvm -polly-detect-keep-going -mllvm -polly-ast-use-context -march=armv8-a+simd -fPIC -DPIC -std=c++20
LOCAL_LDLIBS := -fuse-ld=lld -flto=thin -Wl,-plugin-opt=-emulated-tls=0 -lOpenSLES
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/include/AL $(LOCAL_PATH)/al $(LOCAL_PATH)/alc $(LOCAL_PATH)/common $(LOCAL_PATH)/core
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(BUILD_SHARED_LIBRARY)
