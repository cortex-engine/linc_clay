#ifndef _LINC_CLAY_H_
#define _LINC_CLAY_H_

#include <hxcpp.h>
#include <clay.h>

namespace linc {

    namespace clay {
        Clay_Arena createArena();
        void destroyArena(Clay_Arena _arena);
    }
}

#endif