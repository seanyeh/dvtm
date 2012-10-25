# dvtm version
VERSION = 0.7

# Customize below to fit your system

PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

INCS = -I. -I/usr/local/include -I/usr/include
LIBS = -lc -lutil -lncurses
# NetBSD
#LIBS = -lc -lutil -lcurses
# AIX
#LIBS = -lc -lncursesw
# Cygwin
#INCS += -I/usr/include/ncurses

CFLAGS += -std=c99 -Os ${INCS} -DVERSION=\"${VERSION}\" -DNDEBUG
LDFLAGS += -L/usr/local/lib -L/usr/lib ${LIBS}

DEBUG_CFLAGS = ${CFLAGS} -UNDEBUG -O0 -g -ggdb -Wall

CC = cc
