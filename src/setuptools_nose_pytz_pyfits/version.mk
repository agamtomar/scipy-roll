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

NAME           = setuptools_nose_pytz_pyfits_$(COMPILERNAME)_py$(PYVERSION)
VERSION        = 0.6c11
RELEASE        = 3
PKGROOT        = /opt/scipy/$(PYVERSION)

SRC_SUBDIR     = setuptools_nose_pytz_pyfits

SOURCE_NAME    = setuptools
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = 0.6c11
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

NOSE_NAME      = nose
NOSE_SUFFIX    = tar.gz
NOSE_VERSION   = 1.3.0
NOSE_PKG       = $(NOSE_NAME)-$(NOSE_VERSION).$(NOSE_SUFFIX)
NOSE_DIR       = $(NOSE_PKG:%.$(NOSE_SUFFIX)=%)

PYFITS_NAME    = pyfits
PYFITS_SUFFIX  = tar.gz
PYFITS_VERSION = 3.2
PYFITS_PKG     = $(PYFITS_NAME)-$(PYFITS_VERSION).$(PYFITS_SUFFIX)
PYFITS_DIR     = $(PYFITS_PKG:%.$(PYFITS_SUFFIX)=%)

PYTZ_NAME      = pytz
PYTZ_SUFFIX    = tar.gz
PYTZ_VERSION   = 2013.9
PYTZ_PKG       = $(PYTZ_NAME)-$(PYTZ_VERSION).$(PYTZ_SUFFIX)
PYTZ_DIR       = $(PYTZ_PKG:%.$(PYTZ_SUFFIX)=%)

TAR_GZ_PKGS    = $(SOURCE_PKG) $(NOSE_PKG) $(PYFITS_PKG) $(PYTZ_PKG)

RPM.EXTRAS     = AutoReq:No
