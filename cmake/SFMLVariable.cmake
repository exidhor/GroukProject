# PATH OF THE INCLUDE
set(SFML_INCLUDE "${SFML_ABSOLUTE_PATH}/include")

# SFML LIB RELEASE WINDOWS
set(SFML_GRAPHICS_LIB_REL_WIN "${SFML_ABSOLUTE_PATH}/lib/libsfml-graphics.a")
set(SFML_WINDOW_LIB_REL_WIN "${SFML_ABSOLUTE_PATH}/lib/libsfml-window.a")
set(SFML_SYSTEM_LIB_REL_WIN "${SFML_ABSOLUTE_PATH}/lib/libsfml-system.a")
set(SFML_AUDIO_LIB_REL_WIN "${SFML_ABSOLUTE_PATH}/lib/libsfml-audio.a")
set(SFML_NETWORK_LIB_REL_WIN "${SFML_ABSOLUTE_PATH}/lib/libsfml-network.a")

set(SFML_FULL_LIB_REL_WIN
        "${SFML_GRAPHICS_LIB_REL_WIN}"
        "${SFML_WINDOW_LIB_REL_WIN}"
        "${SFML_SYSTEM_LIB_REL_WIN}"
        "${SFML_AUDIO_LIB_REL_WIN}"
        "${SFML_NETWORK_LIB_REL_WIN}"
        )

# SFML LIB DEBUG WINDOWS
set(SFML_GRAPHICS_LIB_DBG_WIN "${SFML_ABSOLUTE_PATH}/lib/libsfml-graphics-d.a")
set(SFML_WINDOW_LIB_DBG_WIN "${SFML_ABSOLUTE_PATH}/lib/libsfml-window-d.a")
set(SFML_SYSTEM_LIB_DBG_WIN "${SFML_ABSOLUTE_PATH}/lib/libsfml-system-d.a")
set(SFML_AUDIO_LIB_DBG_WIN "${SFML_ABSOLUTE_PATH}/lib/libsfml-audio-d.a")
set(SFML_NETWORK_LIB_DBG_WIN "${SFML_ABSOLUTE_PATH}/lib/libsfml-network-d.a")

set(SFML_FULL_LIB_DBG_WIN
        "${SFML_GRAPHICS_LIB_DBG_WIN}"
        "${SFML_WINDOW_LIB_DBG_WIN}"
        "${SFML_SYSTEM_LIB_DBG_WIN}"
        "${SFML_AUDIO_LIB_DBG_WIN}"
        "${SFML_NETWORK_LIB_DBG_WIN}"
        )

# SFML LIB LINUX
set(SFML_GRAPHICS_LIB_LINUX "${SFML_ABSOLUTE_PATH}/lib/libsfml-graphics.so")
set(SFML_WINDOW_LIB_LINUX "${SFML_ABSOLUTE_PATH}/lib/libsfml-window.so")
set(SFML_SYSTEM_LIB_LINUX "${SFML_ABSOLUTE_PATH}/lib/libsfml-system.so")
set(SFML_AUDIO_LIB_LINUX "${SFML_ABSOLUTE_PATH}/lib/libsfml-audio.so")
set(SFML_NETWORK_LIB_LINUX "${SFML_ABSOLUTE_PATH}/lib/libsfml-network.so")

set(SFML_FULL_LIB_LINUX
        "${SFML_GRAPHICS_LIB_LINUX}"
        "${SFML_WINDOW_LIB_LINUX}"
        "${SFML_SYSTEM_LIB_LINUX}"
        "${SFML_AUDIO_LIB_LINUX}"
        "${SFML_NETWORK_LIB_LINUX}"
        )