cmake_minimum_required(VERSION 3.1)

# Getting sources
file(GLOB_RECURSE SOURCE_FILE *)

# Adding C++ 11
add_definitions(-std=c++11)

# BUILD
set(BUILD_TYPE "")
getBuildType(BUILD_TYPE)
message(WARNING "[GroukProject] : BUILD_TYPE=${BUILD_TYPE}")

set(EXENAME "${PROJECT_NAME}_${BUILD_TYPE}")

# Output directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")
message(STATUS "Output  path : ${CMAKE_SOURCE_DIR}/bin")

add_executable("${EXENAME}" ${SOURCE_FILE})


if(PLATEFORME STREQUAL "WINDOWS")

    if(BUILD_TYPE MATCHES "DEBUG")

        target_link_libraries(${EXENAME}
                ${SFML_FULL_LIB_DBG_WIN})

    else()

        target_link_libraries(${EXENAME}
                ${SFML_FULL_LIB_REL_WIN})

    endif()

elseif(PLATEFORME STREQUAL "LINUX")

    target_link_libraries(${EXENAME}
            ${SFML_FULL_LIB_LINUX})

else()

    message(WARNING "PLATEFORME unknown : ${PLATEFORME}")
    return()

endif()