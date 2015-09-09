all:
	$(TARGET)-gcc -shared -nostdlib -mout-implib -olibpsxscl.so stub.S
	$(TARGET)-gcc -c -o stub.o stub.S
	$(TARGET)-ar rc libpsxscl.a stub.o
	$(TARGET)-ranlib libpsxscl.a


install: all
	mkdir -p $(DESTDIR)/lib
	cp libpsxscl.so libpsxscl.lib.a libpsxscl.a $(DESTDIR)/lib


clean:
	rm -f *.so
	rm -f *.o
	rm -f *.a
	rm -f *~
