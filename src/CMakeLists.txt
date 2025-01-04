

# Set C++ standard for the library.
if (CMAKE_VERSION VERSION_GREATER 3.12)
  set_property(TARGET TAML PROPERTY CXX_STANDARD 20)
endif()

# Specify the include directories for this library.
# This allows consumers of the library to include headers correctly.
target_include_directories(TAML
    PUBLIC 
        ${CMAKE_CURRENT_SOURCE_DIR}
)

# TODO: Add tests and install targets if needed.
