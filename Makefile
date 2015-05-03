all: exit minimum maximum maximum_255 maximum_counter maximum_ending_address

clean:
	rm *.o exit minimum maximum maximum_255 maximum_counter maximum_ending_address

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

maximum_counter.o: maximum_counter.s
	$(AS) -o $@ $< 

maximum_counter: maximum_counter.o
	$(LD) -o $@ $< 

maximum_ending_address.o: maximum_ending_address.s
	$(AS) -o $@ $< 

maximum_ending_address: maximum_ending_address.o
	$(LD) -o $@ $< 
