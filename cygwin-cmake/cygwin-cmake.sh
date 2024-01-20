#!/bin/bash

. /usr/bin/cygwin-env @TRIPLE@

cygwin_prefix=/usr/@TRIPLE@

PATH=${cygwin_prefix}/bin:$PATH cmake \
    -DCMAKE_INSTALL_PREFIX:PATH=${cygwin_prefix} \
    -DCMAKE_INSTALL_LIBDIR:PATH=lib \
    -DCMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES:PATH=${cygwin_prefix}/include \
    -DCMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES:PATH=${cygwin_prefix}/include \
    -DCMAKE_BUILD_TYPE=None \
    -DBUILD_SHARED_LIBS:BOOL=ON \
    -DCMAKE_TOOLCHAIN_FILE=/usr/share/cygwin/toolchain-@TRIPLE@.cmake \
    -DCMAKE_CROSSCOMPILING_EMULATOR=/usr/bin/@TRIPLE@-wine \
    "$@"
