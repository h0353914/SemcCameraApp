// src/wrapper.cpp
#include <stdint.h>

// 只留一個無害符號，方便你驗證 wrapper 是你編的版本
extern "C" __attribute__((visibility("default")))
const char* libcacao_client_wrapper_build_tag() {
    return "libcacao_client DT_NEEDED wrapper (A14)";
}