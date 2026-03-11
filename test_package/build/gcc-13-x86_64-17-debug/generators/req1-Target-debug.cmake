# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(req1_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(req1_FRAMEWORKS_FOUND_DEBUG "${req1_FRAMEWORKS_DEBUG}" "${req1_FRAMEWORK_DIRS_DEBUG}")

set(req1_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET req1_DEPS_TARGET)
    add_library(req1_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET req1_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${req1_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${req1_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:ZLIB::ZLIB;pcre2::pcre2;gtest::gtest;Eigen3::Eigen>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### req1_DEPS_TARGET to all of them
conan_package_library_targets("${req1_LIBS_DEBUG}"    # libraries
                              "${req1_LIB_DIRS_DEBUG}" # package_libdir
                              "${req1_BIN_DIRS_DEBUG}" # package_bindir
                              "${req1_LIBRARY_TYPE_DEBUG}"
                              "${req1_IS_HOST_WINDOWS_DEBUG}"
                              req1_DEPS_TARGET
                              req1_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "req1"    # package_name
                              "${req1_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${req1_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Debug ########################################

    ########## COMPONENT req1::req1_cpp #############

        set(req1_req1_req1_cpp_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(req1_req1_req1_cpp_FRAMEWORKS_FOUND_DEBUG "${req1_req1_req1_cpp_FRAMEWORKS_DEBUG}" "${req1_req1_req1_cpp_FRAMEWORK_DIRS_DEBUG}")

        set(req1_req1_req1_cpp_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET req1_req1_req1_cpp_DEPS_TARGET)
            add_library(req1_req1_req1_cpp_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET req1_req1_req1_cpp_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${req1_req1_req1_cpp_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${req1_req1_req1_cpp_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${req1_req1_req1_cpp_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'req1_req1_req1_cpp_DEPS_TARGET' to all of them
        conan_package_library_targets("${req1_req1_req1_cpp_LIBS_DEBUG}"
                              "${req1_req1_req1_cpp_LIB_DIRS_DEBUG}"
                              "${req1_req1_req1_cpp_BIN_DIRS_DEBUG}" # package_bindir
                              "${req1_req1_req1_cpp_LIBRARY_TYPE_DEBUG}"
                              "${req1_req1_req1_cpp_IS_HOST_WINDOWS_DEBUG}"
                              req1_req1_req1_cpp_DEPS_TARGET
                              req1_req1_req1_cpp_LIBRARIES_TARGETS
                              "_DEBUG"
                              "req1_req1_req1_cpp"
                              "${req1_req1_req1_cpp_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET req1::req1_cpp
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${req1_req1_req1_cpp_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${req1_req1_req1_cpp_LIBRARIES_TARGETS}>
                     )

        if("${req1_req1_req1_cpp_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET req1::req1_cpp
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         req1_req1_req1_cpp_DEPS_TARGET)
        endif()

        set_property(TARGET req1::req1_cpp APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${req1_req1_req1_cpp_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET req1::req1_cpp APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${req1_req1_req1_cpp_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET req1::req1_cpp APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${req1_req1_req1_cpp_LIB_DIRS_DEBUG}>)
        set_property(TARGET req1::req1_cpp APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${req1_req1_req1_cpp_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET req1::req1_cpp APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${req1_req1_req1_cpp_COMPILE_OPTIONS_DEBUG}>)


    ########## COMPONENT req1::req1_c #############

        set(req1_req1_req1_c_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(req1_req1_req1_c_FRAMEWORKS_FOUND_DEBUG "${req1_req1_req1_c_FRAMEWORKS_DEBUG}" "${req1_req1_req1_c_FRAMEWORK_DIRS_DEBUG}")

        set(req1_req1_req1_c_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET req1_req1_req1_c_DEPS_TARGET)
            add_library(req1_req1_req1_c_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET req1_req1_req1_c_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${req1_req1_req1_c_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${req1_req1_req1_c_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${req1_req1_req1_c_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'req1_req1_req1_c_DEPS_TARGET' to all of them
        conan_package_library_targets("${req1_req1_req1_c_LIBS_DEBUG}"
                              "${req1_req1_req1_c_LIB_DIRS_DEBUG}"
                              "${req1_req1_req1_c_BIN_DIRS_DEBUG}" # package_bindir
                              "${req1_req1_req1_c_LIBRARY_TYPE_DEBUG}"
                              "${req1_req1_req1_c_IS_HOST_WINDOWS_DEBUG}"
                              req1_req1_req1_c_DEPS_TARGET
                              req1_req1_req1_c_LIBRARIES_TARGETS
                              "_DEBUG"
                              "req1_req1_req1_c"
                              "${req1_req1_req1_c_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET req1::req1_c
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${req1_req1_req1_c_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${req1_req1_req1_c_LIBRARIES_TARGETS}>
                     )

        if("${req1_req1_req1_c_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET req1::req1_c
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         req1_req1_req1_c_DEPS_TARGET)
        endif()

        set_property(TARGET req1::req1_c APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${req1_req1_req1_c_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET req1::req1_c APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${req1_req1_req1_c_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET req1::req1_c APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${req1_req1_req1_c_LIB_DIRS_DEBUG}>)
        set_property(TARGET req1::req1_c APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${req1_req1_req1_c_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET req1::req1_c APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${req1_req1_req1_c_COMPILE_OPTIONS_DEBUG}>)


    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET req1::req1 APPEND PROPERTY INTERFACE_LINK_LIBRARIES req1::req1_cpp)
    set_property(TARGET req1::req1 APPEND PROPERTY INTERFACE_LINK_LIBRARIES req1::req1_c)

########## For the modules (FindXXX)
set(req1_LIBRARIES_DEBUG req1::req1)
