VPATH = src
CPPFLAGS = -I include -I ../pt
OBJS = crc.o EndPoint.o EscapingSink.o EscapingSource.o FrameBuffer.o FrameBufferUserFrameHandler.o FrameReceiver.o FrameTransmitter.o SequenceNumber.o Thread.o

all: libHDLC.a

libHDLC.a: $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

clean:
	rm -f $(OBJS) libHDLC.a
