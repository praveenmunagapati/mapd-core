# Find EGL
#
# EGL_INCLUDE_DIR
# EGL_LIBRARY
# EGL_FOUND

find_path(EGL_INCLUDE_DIR NAMES EGL/egl.h PATHS /usr/include/nvidia-361)
find_library(EGL_LIBRARY NAMES egl EGL libEGL PATHS /usr/lib/nvidia-361)

set(EGL_INCLUDE_DIRS ${EGL_INCLUDE_DIR})
set(EGL_LIBRARIES ${EGL_LIBRARY})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(EGL REQUIRED_VARS EGL_INCLUDE_DIR EGL_LIBRARY)
#find_package_handle_standard_args(EGL DEFAULT_MSG EGL_INCLUDE_DIR EGL_LIBRARY)

mark_as_advanced(EGL_INCLUDE_DIR EGL_LIBRARY)