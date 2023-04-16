#!/bin/sh

set -e

cygwin_prefix=/usr/@TRIPLE@

# run it in a custom WINEPREFIX to not mess with default ~/.wine
# also default prefix might be in a different architecture, which the exes may fail to run
export WINEPREFIX=${HOME}/.wine-@TRIPLE@

# WINEPATH is used to find dlls, otherwise they should lie next to the exe
if test -z ${WINEPATH+x}
then
  export WINEPATH=${cygwin_prefix}/bin
fi

if test "@TRIPLE@" = "x86_64-pc-cygwin"
then
  export WINEARCH=win64
else
  export WINEARCH=win32
fi

# prevent Mono and Gecko installations
if test -z ${WINEDLLOVERRIDES+x}
then
  export WINEDLLOVERRIDES="mscoree,mshtml="
fi

if test -z ${WINEDEBUG+x}
then
  export WINEDEBUG=-all
fi

/usr/bin/wine "$@"
