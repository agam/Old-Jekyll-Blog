
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/x86_64-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/usr
exec_prefix = $(prefix)
vendordir = $(libdir)/ruby/vendor_ruby
sbindir = $(exec_prefix)/sbin
archdir = $(rubylibdir)/$(arch)
mandir = $(prefix)/share/man
datarootdir = $(prefix)/share
sysconfdir = $(DESTDIR)/etc
oldincludedir = $(DESTDIR)/usr/include
libexecdir = $(prefix)/lib/ruby1.8
sitedir = $(DESTDIR)/usr/local/lib/site_ruby
sitearchdir = $(sitelibdir)/$(sitearch)
dvidir = $(docdir)
pdfdir = $(docdir)
infodir = $(prefix)/share/info
datadir = $(datarootdir)
sharedstatedir = $(prefix)/com
localstatedir = $(DESTDIR)/var
includedir = $(prefix)/include
vendorlibdir = $(vendordir)/$(ruby_version)
vendorarchdir = $(vendorlibdir)/$(sitearch)
bindir = $(exec_prefix)/bin
psdir = $(docdir)
htmldir = $(docdir)
libdir = $(exec_prefix)/lib
sitelibdir = $(sitedir)/$(ruby_version)
localedir = $(datarootdir)/locale
rubylibdir = $(libdir)/ruby/$(ruby_version)
docdir = $(datarootdir)/doc/$(PACKAGE)

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -fno-strict-aliasing -g -g -O2  -fPIC $(cflags) -O0 -Wall  
INCFLAGS = -I. -I. -I/usr/lib/ruby/1.8/x86_64-linux -I.
DEFS     = 
CPPFLAGS =  -D_FORTIFY_SOURCE=2  -D_FORTIFY_SOURCE=2
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. -Wl,-Bsymbolic-functions -Wl,-z,relro -rdynamic -Wl,-export-dynamic
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CC) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby1.8
RUBY_SO_NAME = ruby1.8
arch = x86_64-linux
sitearch = x86_64-linux
ruby_version = 1.8
ruby = /usr/bin/ruby1.8
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lc  -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = redcloth_inline.c redcloth_scan.c redcloth_attributes.c
OBJS = redcloth_inline.o redcloth_scan.o redcloth_attributes.o
TARGET = redcloth_scan
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /usr/local/google/home/agam/Documents/agam.github.io/liquid/ruby/1.8/gems/RedCloth-4.2.9/lib$(target_prefix)
RUBYARCHDIR = /usr/local/google/home/agam/Documents/agam.github.io/liquid/ruby/1.8/gems/RedCloth-4.2.9/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
