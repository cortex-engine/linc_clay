#include <hxcpp.h>

#include "./linc_clay.h"

#define CLAY_IMPLEMENTATION
#include <clay.h>

namespace linc {
    namespace clay {
        Clay_Arena createArena() {
            uint32_t min_size = Clay_MinMemorySize();
            return Clay_CreateArenaWithCapacityAndMemory(min_size, malloc(min_size));
        }
        void destroyArena(Clay_Arena _arena) {
            free(_arena.memory);
            _arena.nextAllocation = 0x0;
            _arena.capacity = 0;
            _arena.memory = NULL;
        }
    }
}