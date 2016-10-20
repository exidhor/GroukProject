cmake_minimum_required(VERSION 3.1)

project(GroukProject)

include("cmake/Config.cmake")
include("cmake/Macros.cmake")
include("cmake/SFMLVariable.cmake")

# Variables
# The version number.
set(GAME_VERSION_MAJOR 0)
set(GAME_VERSION_MINOR 1)
set(GAME_VERSION_PATCH 0)

# File and directories
set(PROJECT_BIN bin)
set(PROJECT_RES res)

set(DEBUG_FLAGS "-Wall -g")
set(RELEASE_FLAGS "-O2")
set(COMPILER_FLAGS "-std=c++11")

# CMake build script
# Checking the plateforme
if(WIN32)
    set(PLATEFORME WINDOWS)
elseif(UNIX)
    set(PLATEFORME UNIX)
else()
    set(PLATEFORME NOT_SUPPORTED)
    message(FATAL_ERROR "This plateforme is currently not supported")
endif()

# Writing default messages
message(STATUS "Detected Plateforme : ${PLATEFORME}")
message(STATUS "Game version ${GAME_VERSION_MAJOR}.${GAME_VERSION_MINOR}.${GAME_VERSION_PATCH}")


# Checking CMakeConfig file
if(NOT EXISTS "${PROJECT_SOURCE_DIR}/cmake/Config.cmake")
    file(WRITE ${PROJECT_SOURCE_DIR}/cmake/Config.cmake "set(SFML_ABSOLUTE_PATH \"A:/path/to/the/SFML/folder\")")
    message(WARNING "cmake/Config.cmake file created, it need to be filled with the correct value")
endif()

# Checking project structure
if(NOT IS_DIRECTORY ${PROJECT_SOURCE_DIR}/${PROJECT_BIN}/)
    file(MAKE_DIRECTORY ${PROJECT_BIN})
    message(WARNING "Bin directory created")

elseif(NOT IS_DIRECTORY ${PROJECT_SOURCE_DIR}/${PROJECT_RES}/)
    file(MAKE_DIRECTORY ${PROJECT_RES})
    message(WARNING "Res directory created")
endif()

set(PROJECT_INCLUDE "${PROJECT_SOURCE_DIR}/include")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")

# include search path
if (PLATEFORME STREQUAL "WINDOWS")

    include_directories(
            ${PROJECT_INCLUDE}
            ${SFML_INCLUDE})

elseif(PLATEFORME STREQUAL "UNIX")

    include_directories(${PROJECT_INCLUDE})

endif()

# Adding sub directories
add_subdirectory(src)