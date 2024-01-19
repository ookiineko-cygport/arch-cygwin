Arch Cygwin
===========

This is an attempt to get a Cygwin cross toolchain on archlinux.

Currently, this repository contains some experimental PKGBUILDs to build a Cygwin cross compiler.

And possibly more packages (or some build tool wrappers) can be added in the future.

## Install

To use, build and install these packages one by one, and in the following order:

  * cygwin-binutils
  * cygwin-w32api-headers
  * cygwin-w32api-runtime-bin
  * cygwin-bin
  * cygwin-gcc
  * cygwin-w32api-runtime (replaces the `-bin` one)
  * cygwin (replaces the `-bin` one; requires `cocom` to build)
