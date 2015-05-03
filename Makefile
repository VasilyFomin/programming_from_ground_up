all: exit minimum maximum

exit.o: exit.s
	as -o $@ $< 

exit: exit.o
	ld -o $@ $< 

minimum.o: minimum.s
	as -o $@ $< 

minimum: minimum.o
	ld -o $@ $< 

maximum.o: maximum.s
	as -o $@ $< 

maximum: maximum.o
	ld -o $@ $< 
