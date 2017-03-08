CXXFLAGS =	-std=c++11 -O2 -g -Wall -Wno-unknown-pragmas -fmessage-length=0 -DOPA_HAVE_GCC_INTRINSIC_ATOMICS=1

OBJS =		sfw/stdafx.o sfw/src/Queue.o sfw/src/Lock.o sfw/src/NativeInterface.o sfw/src/SFWExport.o sfw/src/linux/InotifyService.o sfw/src/linux/InotifyTree.o sfw/src/linux/InotifyEventLoop.cpp

LIBS =

TARGET =	build/linux/sfw

$(TARGET):	$(OBJS)
	$(CXX) -std=c++11 -DOPA_HAVE_GCC_INTRINSIC_ATOMICS=1 -o $(TARGET) $(OBJS) $(LIBS)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
