# ---[ HDF5
find_package(HDF5 COMPONENTS HL REQUIRED)
include_directories(SYSTEM ${HDF5_INCLUDE_DIRS} ${HDF5_HL_INCLUDE_DIR})
list(APPEND Caffe_LINKER_LIBS ${HDF5_LIBRARIES})

#find_package(HDF5 COMPONENTS C HL REQUIRED)
#include_directories(SYSTEM ${HDF5_INCLUDE_DIRS} ${HDF5_HL_INCLUDE_DIR})
#list(APPEND Caffe_LINKER_LIBS ${HDF5_C_STATIC_LIBRARY} ${HDF5_HL_STATIC_LIBRARY})

## Avoid the CMake bug http://www.itk.org/Bug/print_bug_page.php?bug_id=1101
#get_property(_HDF5_C_INTERFACE_LINK_LIBRARIES
#             TARGET   ${HDF5_C_STATIC_LIBRARY}
#             PROPERTY INTERFACE_LINK_LIBRARIES)
#if("${_HDF5_C_INTERFACE_LINK_LIBRARIES}" MATCHES ".*zlib.*")
#  foreach(LIB ${_HDF5_C_INTERFACE_LINK_LIBRARIES})
#    find_package(${LIB} QUIET CONFIG)
#    if(NOT ${${LIB}_FOUND})
#      find_package(${LIB} QUIET)
#    endif()
#  endforeach()
#  if(NOT ZLIB_FOUND)
#    find_package(zlib QUIET CONFIG)
#    if(NOT ZLIB_FOUND)
#      find_package(zlib QUIET)
#    endif()
#  endif()
#endif()
