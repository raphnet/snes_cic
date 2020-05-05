GPASM=gpasm
GPLINK=gplink

all: snescic-key-raphnet.hex
	ls -l *.hex

%.o: %.asm
	$(GPASM) -c $<

%.hex: %.o
	$(GPLINK) -o $@ $^
