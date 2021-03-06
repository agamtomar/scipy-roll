ifndef ROLLPY
  ROLLPY = python
endif

ifndef PYVERSION
  PYVERSION = 2.6
endif

NAME               = sdsc-ipython_py$(PYVERSION)
VERSION            = 3.2.1
RELEASE            = 6
PKGROOT            = /opt/scipy/$(PYVERSION)

SRC_SUBDIR         = ipython

SOURCE_NAME        = ipython
SOURCE_SUFFIX      = tar.gz
SOURCE_VERSION     = $(VERSION)
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

PYZMQ_NAME        = pyzmq
PYZMQ_SUFFIX      = tar.gz
PYZMQ_VERSION     = 14.7.0
PYZMQ_PKG         = $(PYZMQ_NAME)-$(PYZMQ_VERSION).$(PYZMQ_SUFFIX)
PYZMQ_DIR         = $(PYZMQ_PKG:%.$(PYZMQ_SUFFIX)=%)

JINJA2_NAME        = Jinja2
JINJA2_SUFFIX      = tar.gz
JINJA2_VERSION     = 2.8
JINJA2_PKG         = $(JINJA2_NAME)-$(JINJA2_VERSION).$(JINJA2_SUFFIX)
JINJA2_DIR         = $(JINJA2_PKG:%.$(JINJA2_SUFFIX)=%)

TORNADO_NAME        = tornado
TORNADO_SUFFIX      = tar.gz
TORNADO_VERSION     = 4.2.1
TORNADO_PKG         = $(TORNADO_NAME)-$(TORNADO_VERSION).$(TORNADO_SUFFIX)
TORNADO_DIR         = $(TORNADO_PKG:%.$(TORNADO_SUFFIX)=%)

JSONSCHEMA_NAME    = jsonschema
JSONSCHEMA_SUFFIX  = tar.gz
JSONSCHEMA_VERSION = 2.5.1
JSONSCHEMA_PKG     = $(JSONSCHEMA_NAME)-$(JSONSCHEMA_VERSION).$(JSONSCHEMA_SUFFIX)
JSONSCHEMA_DIR     = $(JSONSCHEMA_PKG:%.$(JSONSCHEMA_SUFFIX)=%)

TAR_GZ_PKGS        = $(SOURCE_PKG) $(PYZMQ_PKG) $(JINJA2_PKG) $(TORNADO_PKG) $(JSONSCHEMA_PKG)

RPM.EXTRAS         = AutoReq:No\nObsoletes: ipython_py$(PYVERSION)
RPM.PREFIX         = $(PKGROOT)
