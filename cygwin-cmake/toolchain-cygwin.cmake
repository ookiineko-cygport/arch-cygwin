set (CMAKE_SYSTEM_NAME CYGWIN)
set (CMAKE_SYSTEM_PROCESSOR @PROCESSOR@)
set (CMAKE_LEGACY_CYGWIN_WIN32 0)

# cross compiler names is inherited from environment

# where is the target environment
set (CMAKE_FIND_ROOT_PATH /usr/@TRIPLE@)

# search for programs in the build host directories
set (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Make sure protoc version matches the library
set (Protobuf_PROTOC_EXECUTABLE /usr/bin/cygwin-protoc)

# set the resource compiler (RHBZ #652435)
set (CMAKE_RC_COMPILER @TRIPLE@-windres)
set (CMAKE_MC_COMPILER @TRIPLE@-windmc)

# These are needed for compiling lapack (RHBZ #753906)
set (CMAKE_AR:FILEPATH @TRIPLE@-ar)
set (CMAKE_RANLIB:FILEPATH @TRIPLE@-ranlib)
