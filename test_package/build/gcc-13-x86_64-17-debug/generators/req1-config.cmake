########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(req1_FIND_QUIETLY)
    set(req1_MESSAGE_MODE VERBOSE)
else()
    set(req1_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/req1Targets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${req1_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(req1_VERSION_STRING "1.0.0")
set(req1_INCLUDE_DIRS ${req1_INCLUDE_DIRS_DEBUG} )
set(req1_INCLUDE_DIR ${req1_INCLUDE_DIRS_DEBUG} )
set(req1_LIBRARIES ${req1_LIBRARIES_DEBUG} )
set(req1_DEFINITIONS ${req1_DEFINITIONS_DEBUG} )


# Definition of extra CMake variables from cmake_extra_variables


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${req1_BUILD_MODULES_PATHS_DEBUG} )
    message(${req1_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


