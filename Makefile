all: exit minimum maximum maximum_255

clean:
	rm *.o exit minimum maximum

exit.o: exit.s
	$(AS) -o $@ $< 

exit: exit.o
	$(LD) -o $@ $< 

minimum.o: minimum.s
	$(AS) -o $@ $< 

minimum: minimum.o
	$(LD) -o $@ $< 

maximum.o: maximum.s
	$(AS) -o $@ $< 

maximum: maximum.o
	$(LD) -o $@ $< 

maximum_255.o: maximum_255.s
	$(AS) -o $@ $< 

maximum_255: maximum_255.o
	$(LD) -o $@ $< 
