all: exit minimum maximum

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
