########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND req1_COMPONENT_NAMES req1::req1_c req1::req1_cpp)
list(REMOVE_DUPLICATES req1_COMPONENT_NAMES)
if(DEFINED req1_FIND_DEPENDENCY_NAMES)
  list(APPEND req1_FIND_DEPENDENCY_NAMES GTest PCRE2 ZLIB Eigen3)
  list(REMOVE_DUPLICATES req1_FIND_DEPENDENCY_NAMES)
else()
  set(req1_FIND_DEPENDENCY_NAMES GTest PCRE2 ZLIB Eigen3)
endif()
set(GTest_FIND_MODE "NO_MODULE")
set(PCRE2_FIND_MODE "NO_MODULE")
set(ZLIB_FIND_MODE "NO_MODULE")
set(Eigen3_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(req1_PACKAGE_FOLDER_DEBUG "/home/zc/.conan2/p/b/req17e7770ce5ef92/p")
set(req1_BUILD_MODULES_PATHS_DEBUG )


set(req1_INCLUDE_DIRS_DEBUG "${req1_PACKAGE_FOLDER_DEBUG}/include")
set(req1_RES_DIRS_DEBUG )
set(req1_DEFINITIONS_DEBUG )
set(req1_SHARED_LINK_FLAGS_DEBUG )
set(req1_EXE_LINK_FLAGS_DEBUG )
set(req1_OBJECTS_DEBUG )
set(req1_COMPILE_DEFINITIONS_DEBUG )
set(req1_COMPILE_OPTIONS_C_DEBUG )
set(req1_COMPILE_OPTIONS_CXX_DEBUG )
set(req1_LIB_DIRS_DEBUG "${req1_PACKAGE_FOLDER_DEBUG}/lib")
set(req1_BIN_DIRS_DEBUG )
set(req1_LIBRARY_TYPE_DEBUG STATIC)
set(req1_IS_HOST_WINDOWS_DEBUG 0)
set(req1_LIBS_DEBUG req1_cpp req1_c)
set(req1_SYSTEM_LIBS_DEBUG )
set(req1_FRAMEWORK_DIRS_DEBUG )
set(req1_FRAMEWORKS_DEBUG )
set(req1_BUILD_DIRS_DEBUG )
set(req1_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(req1_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${req1_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${req1_COMPILE_OPTIONS_C_DEBUG}>")
set(req1_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${req1_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${req1_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${req1_EXE_LINK_FLAGS_DEBUG}>")


set(req1_COMPONENTS_DEBUG req1::req1_c req1::req1_cpp)
########### COMPONENT req1::req1_cpp VARIABLES ############################################

set(req1_req1_req1_cpp_INCLUDE_DIRS_DEBUG "${req1_PACKAGE_FOLDER_DEBUG}/include")
set(req1_req1_req1_cpp_LIB_DIRS_DEBUG "${req1_PACKAGE_FOLDER_DEBUG}/lib")
set(req1_req1_req1_cpp_BIN_DIRS_DEBUG )
set(req1_req1_req1_cpp_LIBRARY_TYPE_DEBUG STATIC)
set(req1_req1_req1_cpp_IS_HOST_WINDOWS_DEBUG 0)
set(req1_req1_req1_cpp_RES_DIRS_DEBUG )
set(req1_req1_req1_cpp_DEFINITIONS_DEBUG )
set(req1_req1_req1_cpp_OBJECTS_DEBUG )
set(req1_req1_req1_cpp_COMPILE_DEFINITIONS_DEBUG )
set(req1_req1_req1_cpp_COMPILE_OPTIONS_C_DEBUG "")
set(req1_req1_req1_cpp_COMPILE_OPTIONS_CXX_DEBUG "")
set(req1_req1_req1_cpp_LIBS_DEBUG req1_cpp)
set(req1_req1_req1_cpp_SYSTEM_LIBS_DEBUG )
set(req1_req1_req1_cpp_FRAMEWORK_DIRS_DEBUG )
set(req1_req1_req1_cpp_FRAMEWORKS_DEBUG )
set(req1_req1_req1_cpp_DEPENDENCIES_DEBUG gtest::gtest Eigen3::Eigen ZLIB::ZLIB)
set(req1_req1_req1_cpp_SHARED_LINK_FLAGS_DEBUG )
set(req1_req1_req1_cpp_EXE_LINK_FLAGS_DEBUG )
set(req1_req1_req1_cpp_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(req1_req1_req1_cpp_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${req1_req1_req1_cpp_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${req1_req1_req1_cpp_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${req1_req1_req1_cpp_EXE_LINK_FLAGS_DEBUG}>
)
set(req1_req1_req1_cpp_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${req1_req1_req1_cpp_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${req1_req1_req1_cpp_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT req1::req1_c VARIABLES ############################################

set(req1_req1_req1_c_INCLUDE_DIRS_DEBUG "${req1_PACKAGE_FOLDER_DEBUG}/include")
set(req1_req1_req1_c_LIB_DIRS_DEBUG "${req1_PACKAGE_FOLDER_DEBUG}/lib")
set(req1_req1_req1_c_BIN_DIRS_DEBUG )
set(req1_req1_req1_c_LIBRARY_TYPE_DEBUG STATIC)
set(req1_req1_req1_c_IS_HOST_WINDOWS_DEBUG 0)
set(req1_req1_req1_c_RES_DIRS_DEBUG )
set(req1_req1_req1_c_DEFINITIONS_DEBUG )
set(req1_req1_req1_c_OBJECTS_DEBUG )
set(req1_req1_req1_c_COMPILE_DEFINITIONS_DEBUG )
set(req1_req1_req1_c_COMPILE_OPTIONS_C_DEBUG "")
set(req1_req1_req1_c_COMPILE_OPTIONS_CXX_DEBUG "")
set(req1_req1_req1_c_LIBS_DEBUG req1_c)
set(req1_req1_req1_c_SYSTEM_LIBS_DEBUG )
set(req1_req1_req1_c_FRAMEWORK_DIRS_DEBUG )
set(req1_req1_req1_c_FRAMEWORKS_DEBUG )
set(req1_req1_req1_c_DEPENDENCIES_DEBUG ZLIB::ZLIB pcre2::pcre2)
set(req1_req1_req1_c_SHARED_LINK_FLAGS_DEBUG )
set(req1_req1_req1_c_EXE_LINK_FLAGS_DEBUG )
set(req1_req1_req1_c_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(req1_req1_req1_c_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${req1_req1_req1_c_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${req1_req1_req1_c_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${req1_req1_req1_c_EXE_LINK_FLAGS_DEBUG}>
)
set(req1_req1_req1_c_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${req1_req1_req1_c_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${req1_req1_req1_c_COMPILE_OPTIONS_C_DEBUG}>")