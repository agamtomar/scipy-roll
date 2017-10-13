ifndef ROLLCOMPILER
  ROLLCOMPILER = gnu
endif
COMPILERNAME := $(firstword $(subst /, ,$(ROLLCOMPILER)))

ifndef ROLLPY
  ROLLPY = python
endif

ifndef PYVERSION
  PYVERSION = 2.6
endif

NAME                   = sdsc-numba_py$(PYVERSION)
VERSION                = 0.21.0
RELEASE                = 2
PKGROOT                = /opt/scipy/$(PYVERSION)

SRC_SUBDIR             = numba

SOURCE_NAME            = numba
SOURCE_SUFFIX          = tar.gz
SOURCE_VERSION         = $(VERSION)
SOURCE_PKG             = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR             = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

SINGLEDISPATCH_NAME    = singledispatch
SINGLEDISPATCH_SUFFIX  = tar.gz
SINGLEDISPATCH_VERSION = 3.4.0.3
SINGLEDISPATCH_PKG     = $(SINGLEDISPATCH_NAME)-$(SINGLEDISPATCH_VERSION).$(SINGLEDISPATCH_SUFFIX)
SINGLEDISPATCH_DIR     = $(SINGLEDISPATCH_PKG:%.$(SINGLEDISPATCH_SUFFIX)=%)

TAR_GZ_PKGS            = $(SOURCE_PKG) $(SINGLEDISPATCH_PKG)

RPM.EXTRAS             = AutoReq:No\nObsoletes: numba_py$(PYVERSION)
RPM.PREFIX             = $(PKGROOT)
