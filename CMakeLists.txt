set(the_description "FreeType module. It enables to draw strings with outlines and mono-bitmaps/gray-bitmaps.")

find_package(Freetype REQUIRED)

# find_package(HarfBuzz) is not included in cmake
set(HARFBUZZ_DIR "$ENV{HARFBUZZ_DIR}" CACHE PATH "HarfBuzz directory")
find_path(HARFBUZZ_INCLUDE_DIRS
    NAMES hb-ft.h PATH_SUFFIXES harfbuzz
    HINTS ${HARFBUZZ_DIR}/include)
find_library(HARFBUZZ_LIBRARIES
    NAMES harfbuzz
    HINTS ${HARFBUZZ_DIR}/lib)
find_package_handle_standard_args(HARFBUZZ
    DEFAULT_MSG HARFBUZZ_LIBRARIES HARFBUZZ_INCLUDE_DIRS)

if(NOT FREETYPE_FOUND)
  message(STATUS "freetype2:   NO")
else()
  message(STATUS "freetype2:   YES")
endif()

if(NOT HARFBUZZ_FOUND)
  message(STATUS "harfbuzz:   NO")
else()
  message(STATUS "harfbuzz:   YES")
endif()

if(FREETYPE_FOUND AND HARFBUZZ_FOUND)
  ocv_define_module(freetype opencv_core opencv_imgproc PRIVATE_REQUIRED ${FREETYPE_LIBRARIES} ${HARFBUZZ_LIBRARIES} WRAP python)
  ocv_include_directories(${FREETYPE_INCLUDE_DIRS} ${HARFBUZZ_INCLUDE_DIRS})
else()
  ocv_module_disable(freetype)
endif()