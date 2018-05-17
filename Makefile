
ASM:=rgbasm
LINK:=rgblink
FIX:=rgbfix

OBJECTS:=\
src/testgame.o

all: testgame.gbc

clean:
	rm testgame.gbc $(OBJECTS)

.PHONY: all clean

testgame.gbc: $(OBJECTS)
	$(LINK) -o $@ $(OBJECTS)
	
%.o: %.asm
	$(ASM) -o $@ -v $< -i ./include