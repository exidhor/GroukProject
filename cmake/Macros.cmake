
function(getBuildType BUILD_TYPE)

    #message(WARNING "CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}")

    # detect the current type of build
    if(CMAKE_BUILD_TYPE MATCHES "Debug")

        #message(WARNING "Compilation mode : DEBUG MODE")
        set(${BUILD_TYPE} "DEBUG" PARENT_SCOPE)

    elseif(CMAKE_BUILD_TYPE EQUAL "Release")

        #message(WARNING "Compilation mode : RELEASE MODE")
        set(${BUILD_TYPE} "RELEASE" PARENT_SCOPE)

    else()

        message(WARNING "No Compilation mode detected : RELEASE MODE selected by default")
        set(${CMAKE_BUILD_TYPE} "RELEASE")
        set(${BUILD_TYPE} "RELEASE" PARENT_SCOPE)

    endif()

endfunction()