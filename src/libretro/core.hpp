/*
    Copyright 2023 Jesse Talavera-Greenberg

    melonDS DS is free software: you can redistribute it and/or modify it under
    the terms of the GNU General Public License as published by the Free
    Software Foundation, either version 3 of the License, or (at your option)
    any later version.

    melonDS DS is distributed in the hope that it will be useful, but WITHOUT ANY
    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
    FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with melonDS DS. If not, see http://www.gnu.org/licenses/.
*/

#ifndef MELONDSDS_CORE_HPP
#define MELONDSDS_CORE_HPP

#include <memory>

#include "config.hpp"
#include "PlatformOGLPrivate.h"

namespace melonDS {
    class NDS;
}

namespace melondsds {
    using namespace MelonDsDs;
    struct CoreState {
        CoreState(bool init) noexcept;
        ~CoreState() noexcept;
        std::unique_ptr<melonDS::NDS> Console = nullptr;
        Config Config {};
    public:
        [[nodiscard]] bool IsInitialized() const noexcept { return initialized; }
    private:
        bool initialized = false;
    };

    extern CoreState Core;
}
#endif //MELONDSDS_CORE_HPP
