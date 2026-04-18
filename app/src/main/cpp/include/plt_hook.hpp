#pragma once

#include <string>
#include <functional>

namespace Utils
{
    bool hookPLTByName(const std::string &libName, const std::string &symbolName,
                       void *hookFunc, void **origFunc);
    bool commitPLTHooks();
}
