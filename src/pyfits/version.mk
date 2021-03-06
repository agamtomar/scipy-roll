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

NAME           = sdsc-pyfits_py$(PYVERSION)
VERSION        = 3.3
RELEASE        = 4
PKGROOT        = /opt/scipy/$(PYVERSION)

SRC_SUBDIR     = pyfits

SOURCE_NAME    = pyfits
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

D2TO1_NAME     = d2to1
D2TO1_SUFFIX   = tar.gz
D2TO1_VERSION  = 0.2.12
D2TO1_PKG      = $(D2TO1_NAME)-$(D2TO1_VERSION).post1.$(D2TO1_SUFFIX)
D2TO1_DIR      = $(D2TO1_PKG:%.$(D2TO1_SUFFIX)=%)

STSCI_NAME     = stsci.distutils
STSCI_SUFFIX   = tar.gz
STSCI_VERSION  = 0.3.7
STSCI_PKG      = $(STSCI_NAME)-$(STSCI_VERSION).$(STSCI_SUFFIX)
STSCI_DIR      = $(STSCI_PKG:%.$(STSCI_SUFFIX)=%)

TAR_GZ_PKGS    = $(SOURCE_PKG) $(D2TO1_PKG) $(STSCI_PKG)

RPM.EXTRAS     = AutoReq:No\nObsoletes: pyfits_py$(PYVERSION)
RPM.PREFIX     = $(PKGROOT)
