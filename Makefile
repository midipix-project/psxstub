all:
	x86_64-nt64-midipix-gcc -shared -nostdlib -mout-implib -olibpsxscl.so stub.s
	x86_64-nt64-midipix-as -o stub.o stub.s
	x86_64-nt64-midipix-ar rc libpsxscl.a stub.o
	x86_64-nt64-midipix-ranlib libpsxscl.a
	

install: all
	mkdir -p $(DESTDIR)/lib
	cp -t $(DESTDIR)/lib libpsxscl.so libpsxscl.lib.a libpsxscl.a


clean:
	rm -f *.so
	rm -f *.o
	rm -f *.a
	rm -f *~
