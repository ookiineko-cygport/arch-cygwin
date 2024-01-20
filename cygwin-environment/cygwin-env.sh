#!/bin/sh

_arch=$1

default_cygwin_pp_flags="-D_FORTIFY_SOURCE=3 -D_GLIBCXX_ASSERTIONS"
default_cygwin_compiler_flags="$default_cygwin_pp_flags -O2 -pipe -fno-plt -fexceptions --param=ssp-buffer-size=4 -Wformat -Werror=format-security -fcf-protection"
default_cygwin_linker_flags="-Wl,-O1,--sort-common,--as-needed -fstack-protector"

export CPPFLAGS="${CYGWIN_CPPFLAGS:-$default_cygwin_pp_flags $CPPFLAGS}"
export CFLAGS="${CYGWIN_CFLAGS:-$default_cygwin_compiler_flags $CFLAGS}"
export CXXFLAGS="${CYGWIN_CXXFLAGS:-$default_cygwin_compiler_flags $CXXFLAGS}"
export LDFLAGS="${CYGWIN_LDFLAGS:-$default_cygwin_linker_flags $LDFLAGS}"

export CC="${CYGWIN_CC:-$_arch-gcc}"
export CXX="${CYGWIN_CXX:-$_arch-g++}"

cygwin_prefix=/usr/${_arch}
export PKG_CONFIG_SYSROOT_DIR="${cygwin_prefix}"
export PKG_CONFIG_LIBDIR="${cygwin_prefix}/lib/pkgconfig:${cygwin_prefix}/share/pkgconfig"
