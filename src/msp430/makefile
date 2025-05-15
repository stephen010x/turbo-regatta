#OBJS    = $(TMPDIR)/blink.o
DEVICE := msp430g2553


CURDIR := $(shell pwd)
MSPDIR := $(shell dirname $$(which msp430-elf-gcc))/..
FLADIR := $(shell dirname $$(which MSP430Flasher))
ASMDIR := ../../naken_asm
TMPDIR := tmp

# add executables to path
export PATH:=$(PATH):$(CURDIR)/tools:$(ASMDIR)


CC := msp430-elf-gcc
CP := msp430-elf-cpp
OC := msp430-elf-objcopy
OD := msp430-elf-objdump
#AS := msp430-elf-as
LD := msp430-elf-ld

GDB   := msp430-elf-gdb
FLASH := MSP430Flasher

HD := hex430
DS := dis430

AS := naken_asm
#DS := naken_util -disasm -msp430


INCS := -I$(MSPDIR)/include -I$(ASMDIR)/include
# why is this include?
LIBS := -L$(MSPDIR)/include

CFLAGS := -Og -Wall -g
#CFLAGS := -Os -Wall -g
#LFLAGS := -L $(LIB) -Wl,-Map,$(MAP),--gc-sections -mtiny-printf
LFLAGS := -Wl,--gc-sections
BFLAGS := -flto -mmcu=$(DEVICE)


AFLAGS := -l


DB := gdb_agent_console


#%.c: FORCE $(TMPDIR)
#	$(CC) $(LIBS) $(LFLAGS) $(BFLAGS) $(basename $@).o -o $(TMPDIR)/$(DEVICE).out
#	$(OC) -O ihex $(TMPDIR)/$(DEVICE).out $(TMPDIR)/$(DEVICE).hex

#$(TMPDIR)/%.o: %.c
#	$(CC) $(INCS) $(LIBS) $(CFLAGS) $(BFLAGS) -c $< -o $@


#%.c: FORCE $(TMPDIR) %.o
#	$(CC) $(LIBS) $(LFLAGS) $(BFLAGS) $(filter %.o, $^) -o $(TMPDIR)/$(DEVICE).out
#	$(OC) -O ihex $(TMPDIR)/$(DEVICE).out $(TMPDIR)/$(DEVICE).hex


GOAL := $(firstword $(MAKECMDGOALS))
#GOAL_SRC := $(firstword $(wildcard *.c) $(wildcard *.asm))
#GOAL_OBJ := $(basename $(GOAL_SRC)).o
GOAL_SRC := $(firstword $(wildcard $(GOAL).*))
GOAL_OBJ := $(basename $(GOAL_SRC)).o
GOAL_EXT := $(subst .,,$(suffix $(GOAL_SRC)))


all:
	@echo "\n\tplease specify a target\n"


%: $(GOAL_EXT)
	@:

c: $(GOAL_SRC)


asm: $(GOAL_SRC)


c: $(TMPDIR) $(TMPDIR)/$(GOAL_OBJ)
	$(CC) $(LIBS) $(LFLAGS) $(BFLAGS) $(filter %.o, $^) -o $(TMPDIR)/$(DEVICE).out
	$(OC) -O ihex $(TMPDIR)/$(DEVICE).out $(TMPDIR)/$(DEVICE).hex

asm: $(GOAL_SRC) $(TMPDIR)
	$(AS) -q -type hex $(AFLAGS) $(INCS) -o $(TMPDIR)/$(DEVICE).hex $<



$(TMPDIR)/%.o: %.c
	$(CC) $(INCS) $(LIBS) $(CFLAGS) $(BFLAGS) -c $< -o $@



#%.asm: FORCE $(TMPDIR)
#	$(AS) -q -type hex $(AFLAGS) $(INCS) -o $(TMPDIR)/$(DEVICE).hex $@



$(TMPDIR):
	mkdir -p $(TMPDIR)



flash:
	$(FLASH) -w $(TMPDIR)/$(DEVICE).hex -v -g -z [VCC]
#	$(FLASH) -w $(DEVICE).txt -v -g -z [VCC]

flash-help:
	$(FLASH) -h


test:
#	$(DS) $(TMPDIR)/$(DEVICE).elf -1 -s
#	$(OC) -I ihex -O elf32-msp430 $(TMPDIR)/$(DEVICE).hex $(TMPDIR)/$(DEVICE).out
#	$(OD) --help
	$(OC) -I ihex -O binary $(TMPDIR)/$(DEVICE).hex $(TMPDIR)/$(DEVICE).bin
	$(OD) -D -b binary -m msp430 $(TMPDIR)/$(DEVICE).bin --demangle
#	$(CC) $(INCS) $(LIBS) $(CFLAGS) $(LFLAGS) $(BFLAGS) test.S
#--no-show-raw-insn --no-addresses



gdb:
#	$(OC) -I ihex -O elf32-msp430 $(TMPDIR)/$(DEVICE).hex $(TMPDIR)/$(DEVICE).out
	$(GDB) -p 55000 $(TMPDIR)/$(DEVICE).out


debug:
#	$(OC) --help
	$(DB) -p 55000 $(MSPDIR)/msp430.dat


clean: 
	rm -rf tmp/
	rm -rf Log/


#FORCE:
#	@:


# disables stupid builtin rules
#.SUFFIXES:

#SRC_FILES := $(wildcard *.c) $(wildcard *.asm)
.PHONY: all clean debug flash flash-help test gdb c asm















#cb: $(TMPDIR) $(TMPDIR)/blinkB.o
#	$(CC) $(LIBS) $(LFLAGS) $(BFLAGS) $(filter %.o, $^) -o $(TMPDIR)/$(DEVICE).out
#	$(OC) -O ihex $(TMPDIR)/$(DEVICE).out $(TMPDIR)/$(DEVICE).hex
##	$(OC) -O tekhex $(DEVICE).out $(DEVICE).txt
##	$(HD) --ti_txt $(DEVICE).out

#asm: blink.asm $(TMPDIR)
#	$(AS) -q -type hex $(AFLAGS) $(INCS) -o $(TMPDIR)/$(DEVICE).hex $<
##	$(OC) -I ihex -O binary $(TMPDIR)/$(DEVICE).hex $(TMPDIR)/$(DEVICE).bin
##	$(OD) -D -b binary -m msp430 $(TMPDIR)/$(DEVICE).bin > $(TMPDIR)/$(DEVICE).asm

#taska: blinkB.asm $(TMPDIR)
#	$(AS) -q -type hex $(AFLAGS) $(INCS) -o $(TMPDIR)/$(DEVICE).hex $<


#asmc: blinkC.asm $(TMPDIR)
#	$(AS) -q -type hex $(AFLAGS) $(INCS) -o $(TMPDIR)/$(DEVICE).hex $<
