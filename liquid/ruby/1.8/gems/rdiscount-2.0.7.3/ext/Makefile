
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/x86_64-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/usr
exec_prefix = $(prefix)
rubylibdir = $(libdir)/ruby/$(ruby_version)
sysconfdir = $(DESTDIR)/etc
psdir = $(docdir)
datarootdir = $(prefix)/share
oldincludedir = $(DESTDIR)/usr/include
archdir = $(rubylibdir)/$(arch)
sharedstatedir = $(prefix)/com
datadir = $(datarootdir)
sitelibdir = $(sitedir)/$(ruby_version)
localedir = $(datarootdir)/locale
vendordir = $(libdir)/ruby/vendor_ruby
libdir = $(exec_prefix)/lib
vendorlibdir = $(vendordir)/$(ruby_version)
dvidir = $(docdir)
bindir = $(exec_prefix)/bin
mandir = $(prefix)/share/man
sitearchdir = $(sitelibdir)/$(sitearch)
libexecdir = $(prefix)/lib/ruby1.8
sbindir = $(exec_prefix)/sbin
docdir = $(datarootdir)/doc/$(PACKAGE)
vendorarchdir = $(vendorlibdir)/$(sitearch)
infodir = $(prefix)/share/info
sitedir = $(DESTDIR)/usr/local/lib/site_ruby
pdfdir = $(docdir)
localstatedir = $(DESTDIR)/var
htmldir = $(docdir)
includedir = $(prefix)/include

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -fno-strict-aliasing -g -g -O2  -fPIC $(cflags) 
INCFLAGS = -I. -I. -I/usr/lib/ruby/1.8/x86_64-linux -I.
DEFS     = 
CPPFLAGS = -DHAVE_RANDOM -DHAVE_SRANDOM -DHAVE_RAND -DHAVE_SRAND -DSIZEOF_UNSIGNED_LONG=8 -DSIZEOF_UNSIGNED_INT=4 -DSIZEOF_UNSIGNED_INT=4 -DVERSION=\"2.0.7\" -D_FORTIFY_SOURCE=2  -D_FORTIFY_SOURCE=2
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
LIBS = $(LIBRUBYARG_SHARED)  -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = setup.c Csio.c generate.c css.c docheader.c emmatch.c version.c tags.c dumptree.c toc.c resource.c markdown.c html5.c amalloc.c mkdio.c xmlpage.c rdiscount.c flags.c xml.c basename.c
OBJS = setup.o Csio.o generate.o css.o docheader.o emmatch.o version.o tags.o dumptree.o toc.o resource.o markdown.o html5.o amalloc.o mkdio.o xmlpage.o rdiscount.o flags.o xml.o basename.o
TARGET = rdiscount
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /usr/local/google/home/agam/Documents/agam.github.io/liquid/ruby/1.8/gems/rdiscount-2.0.7.3/lib$(target_prefix)
RUBYARCHDIR = /usr/local/google/home/agam/Documents/agam.github.io/liquid/ruby/1.8/gems/rdiscount-2.0.7.3/lib$(target_prefix)

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
