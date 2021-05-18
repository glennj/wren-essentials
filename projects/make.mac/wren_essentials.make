# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=release_64bit
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

ifeq ($(origin CC), default)
  CC = clang
endif
ifeq ($(origin CXX), default)
  CXX = clang++
endif
ifeq ($(origin AR), default)
  AR = ar
endif
INCLUDES += -I../../src/cli -I../../src/module -I../../deps/wren/include -I../../deps/wren/src/vm -I../../deps/wren/src/optional -I../../deps/libuv/include -I../../deps/libuv/src
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS +=
LDDEPS +=
LINKCMD = $(CC) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),release_64bit)
TARGETDIR = ../../lib
TARGET = $(TARGETDIR)/libwren_essentials.dylib
OBJDIR = obj/64bit/Release
DEFINES += -DNDEBUG -D_DARWIN_USE_64_BIT_INODE=1 -D_DARWIN_UNLIMITED_SELECT=1
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O3 -fPIC -std=c99 -mmacosx-version-min=10.12
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O3 -fPIC -mmacosx-version-min=10.12
ALL_LDFLAGS += $(LDFLAGS) -m64 -dynamiclib -Wl,-install_name,@rpath/libwren_essentials.dylib

else ifeq ($(config),release_32bit)
TARGETDIR = ../../lib
TARGET = $(TARGETDIR)/libwren_essentials.dylib
OBJDIR = obj/32bit/Release
DEFINES += -DNDEBUG -D_DARWIN_USE_64_BIT_INODE=1 -D_DARWIN_UNLIMITED_SELECT=1
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O3 -fPIC -std=c99 -mmacosx-version-min=10.12
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O3 -fPIC -mmacosx-version-min=10.12
ALL_LDFLAGS += $(LDFLAGS) -m32 -dynamiclib -Wl,-install_name,@rpath/libwren_essentials.dylib

else ifeq ($(config),release_64bit-no-nan-tagging)
TARGETDIR = ../../lib
TARGET = $(TARGETDIR)/libwren_essentials.dylib
OBJDIR = obj/64bit-no-nan-tagging/Release
DEFINES += -DNDEBUG -DWREN_NAN_TAGGING=0 -D_DARWIN_USE_64_BIT_INODE=1 -D_DARWIN_UNLIMITED_SELECT=1
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O3 -fPIC -std=c99 -mmacosx-version-min=10.12
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O3 -fPIC -mmacosx-version-min=10.12
ALL_LDFLAGS += $(LDFLAGS) -dynamiclib -Wl,-install_name,@rpath/libwren_essentials.dylib

else ifeq ($(config),debug_64bit)
TARGETDIR = ../../lib
TARGET = $(TARGETDIR)/libwren_essentials_d.dylib
OBJDIR = obj/64bit/Debug
DEFINES += -DDEBUG -D_DARWIN_USE_64_BIT_INODE=1 -D_DARWIN_UNLIMITED_SELECT=1
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -fPIC -g -std=c99 -mmacosx-version-min=10.12
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -fPIC -g -mmacosx-version-min=10.12
ALL_LDFLAGS += $(LDFLAGS) -m64 -dynamiclib -Wl,-install_name,@rpath/libwren_essentials_d.dylib

else ifeq ($(config),debug_32bit)
TARGETDIR = ../../lib
TARGET = $(TARGETDIR)/libwren_essentials_d.dylib
OBJDIR = obj/32bit/Debug
DEFINES += -DDEBUG -D_DARWIN_USE_64_BIT_INODE=1 -D_DARWIN_UNLIMITED_SELECT=1
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -fPIC -g -std=c99 -mmacosx-version-min=10.12
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -fPIC -g -mmacosx-version-min=10.12
ALL_LDFLAGS += $(LDFLAGS) -m32 -dynamiclib -Wl,-install_name,@rpath/libwren_essentials_d.dylib

else ifeq ($(config),debug_64bit-no-nan-tagging)
TARGETDIR = ../../lib
TARGET = $(TARGETDIR)/libwren_essentials_d.dylib
OBJDIR = obj/64bit-no-nan-tagging/Debug
DEFINES += -DDEBUG -DWREN_NAN_TAGGING=0 -D_DARWIN_USE_64_BIT_INODE=1 -D_DARWIN_UNLIMITED_SELECT=1
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -fPIC -g -std=c99 -mmacosx-version-min=10.12
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -fPIC -g -mmacosx-version-min=10.12
ALL_LDFLAGS += $(LDFLAGS) -dynamiclib -Wl,-install_name,@rpath/libwren_essentials_d.dylib

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/async.o
GENERATED += $(OBJDIR)/bsd-ifaddrs.o
GENERATED += $(OBJDIR)/core.o
GENERATED += $(OBJDIR)/darwin-proctitle.o
GENERATED += $(OBJDIR)/darwin.o
GENERATED += $(OBJDIR)/dl.o
GENERATED += $(OBJDIR)/essentials.o
GENERATED += $(OBJDIR)/fs-poll.o
GENERATED += $(OBJDIR)/fs.o
GENERATED += $(OBJDIR)/fsevents.o
GENERATED += $(OBJDIR)/getaddrinfo.o
GENERATED += $(OBJDIR)/getnameinfo.o
GENERATED += $(OBJDIR)/idna.o
GENERATED += $(OBJDIR)/inet.o
GENERATED += $(OBJDIR)/kqueue.o
GENERATED += $(OBJDIR)/loop-watcher.o
GENERATED += $(OBJDIR)/loop.o
GENERATED += $(OBJDIR)/mirror.o
GENERATED += $(OBJDIR)/pipe.o
GENERATED += $(OBJDIR)/poll.o
GENERATED += $(OBJDIR)/process.o
GENERATED += $(OBJDIR)/proctitle.o
GENERATED += $(OBJDIR)/random-devurandom.o
GENERATED += $(OBJDIR)/random-getentropy.o
GENERATED += $(OBJDIR)/random.o
GENERATED += $(OBJDIR)/signal.o
GENERATED += $(OBJDIR)/stream.o
GENERATED += $(OBJDIR)/strscpy.o
GENERATED += $(OBJDIR)/tcp.o
GENERATED += $(OBJDIR)/thread.o
GENERATED += $(OBJDIR)/threadpool.o
GENERATED += $(OBJDIR)/time.o
GENERATED += $(OBJDIR)/timer.o
GENERATED += $(OBJDIR)/tty.o
GENERATED += $(OBJDIR)/udp.o
GENERATED += $(OBJDIR)/uv-common.o
GENERATED += $(OBJDIR)/uv-data-getter-setters.o
GENERATED += $(OBJDIR)/version.o
GENERATED += $(OBJDIR)/wren_compiler.o
GENERATED += $(OBJDIR)/wren_core.o
GENERATED += $(OBJDIR)/wren_debug.o
GENERATED += $(OBJDIR)/wren_opt_meta.o
GENERATED += $(OBJDIR)/wren_opt_random.o
GENERATED += $(OBJDIR)/wren_primitive.o
GENERATED += $(OBJDIR)/wren_utils.o
GENERATED += $(OBJDIR)/wren_value.o
GENERATED += $(OBJDIR)/wren_vm.o
OBJECTS += $(OBJDIR)/async.o
OBJECTS += $(OBJDIR)/bsd-ifaddrs.o
OBJECTS += $(OBJDIR)/core.o
OBJECTS += $(OBJDIR)/darwin-proctitle.o
OBJECTS += $(OBJDIR)/darwin.o
OBJECTS += $(OBJDIR)/dl.o
OBJECTS += $(OBJDIR)/essentials.o
OBJECTS += $(OBJDIR)/fs-poll.o
OBJECTS += $(OBJDIR)/fs.o
OBJECTS += $(OBJDIR)/fsevents.o
OBJECTS += $(OBJDIR)/getaddrinfo.o
OBJECTS += $(OBJDIR)/getnameinfo.o
OBJECTS += $(OBJDIR)/idna.o
OBJECTS += $(OBJDIR)/inet.o
OBJECTS += $(OBJDIR)/kqueue.o
OBJECTS += $(OBJDIR)/loop-watcher.o
OBJECTS += $(OBJDIR)/loop.o
OBJECTS += $(OBJDIR)/mirror.o
OBJECTS += $(OBJDIR)/pipe.o
OBJECTS += $(OBJDIR)/poll.o
OBJECTS += $(OBJDIR)/process.o
OBJECTS += $(OBJDIR)/proctitle.o
OBJECTS += $(OBJDIR)/random-devurandom.o
OBJECTS += $(OBJDIR)/random-getentropy.o
OBJECTS += $(OBJDIR)/random.o
OBJECTS += $(OBJDIR)/signal.o
OBJECTS += $(OBJDIR)/stream.o
OBJECTS += $(OBJDIR)/strscpy.o
OBJECTS += $(OBJDIR)/tcp.o
OBJECTS += $(OBJDIR)/thread.o
OBJECTS += $(OBJDIR)/threadpool.o
OBJECTS += $(OBJDIR)/time.o
OBJECTS += $(OBJDIR)/timer.o
OBJECTS += $(OBJDIR)/tty.o
OBJECTS += $(OBJDIR)/udp.o
OBJECTS += $(OBJDIR)/uv-common.o
OBJECTS += $(OBJDIR)/uv-data-getter-setters.o
OBJECTS += $(OBJDIR)/version.o
OBJECTS += $(OBJDIR)/wren_compiler.o
OBJECTS += $(OBJDIR)/wren_core.o
OBJECTS += $(OBJDIR)/wren_debug.o
OBJECTS += $(OBJDIR)/wren_opt_meta.o
OBJECTS += $(OBJDIR)/wren_opt_random.o
OBJECTS += $(OBJDIR)/wren_primitive.o
OBJECTS += $(OBJDIR)/wren_utils.o
OBJECTS += $(OBJDIR)/wren_value.o
OBJECTS += $(OBJDIR)/wren_vm.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking wren_essentials
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning wren_essentials
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) rmdir /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/fs-poll.o: ../../deps/libuv/src/fs-poll.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/idna.o: ../../deps/libuv/src/idna.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/inet.o: ../../deps/libuv/src/inet.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/random.o: ../../deps/libuv/src/random.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strscpy.o: ../../deps/libuv/src/strscpy.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/threadpool.o: ../../deps/libuv/src/threadpool.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/timer.o: ../../deps/libuv/src/timer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/async.o: ../../deps/libuv/src/unix/async.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/bsd-ifaddrs.o: ../../deps/libuv/src/unix/bsd-ifaddrs.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/core.o: ../../deps/libuv/src/unix/core.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/darwin-proctitle.o: ../../deps/libuv/src/unix/darwin-proctitle.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/darwin.o: ../../deps/libuv/src/unix/darwin.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/dl.o: ../../deps/libuv/src/unix/dl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/fs.o: ../../deps/libuv/src/unix/fs.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/fsevents.o: ../../deps/libuv/src/unix/fsevents.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/getaddrinfo.o: ../../deps/libuv/src/unix/getaddrinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/getnameinfo.o: ../../deps/libuv/src/unix/getnameinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/kqueue.o: ../../deps/libuv/src/unix/kqueue.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/loop-watcher.o: ../../deps/libuv/src/unix/loop-watcher.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/loop.o: ../../deps/libuv/src/unix/loop.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pipe.o: ../../deps/libuv/src/unix/pipe.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/poll.o: ../../deps/libuv/src/unix/poll.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/process.o: ../../deps/libuv/src/unix/process.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/proctitle.o: ../../deps/libuv/src/unix/proctitle.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/random-devurandom.o: ../../deps/libuv/src/unix/random-devurandom.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/random-getentropy.o: ../../deps/libuv/src/unix/random-getentropy.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/signal.o: ../../deps/libuv/src/unix/signal.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/stream.o: ../../deps/libuv/src/unix/stream.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tcp.o: ../../deps/libuv/src/unix/tcp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/thread.o: ../../deps/libuv/src/unix/thread.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tty.o: ../../deps/libuv/src/unix/tty.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/udp.o: ../../deps/libuv/src/unix/udp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/uv-common.o: ../../deps/libuv/src/uv-common.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/uv-data-getter-setters.o: ../../deps/libuv/src/uv-data-getter-setters.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/version.o: ../../deps/libuv/src/version.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_opt_meta.o: ../../deps/wren/src/optional/wren_opt_meta.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_opt_random.o: ../../deps/wren/src/optional/wren_opt_random.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_compiler.o: ../../deps/wren/src/vm/wren_compiler.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_core.o: ../../deps/wren/src/vm/wren_core.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_debug.o: ../../deps/wren/src/vm/wren_debug.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_primitive.o: ../../deps/wren/src/vm/wren_primitive.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_utils.o: ../../deps/wren/src/vm/wren_utils.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_value.o: ../../deps/wren/src/vm/wren_value.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_vm.o: ../../deps/wren/src/vm/wren_vm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/essentials.o: ../../src/essentials.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mirror.o: ../../src/modules/mirror.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/time.o: ../../src/modules/time.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif