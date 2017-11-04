#!/bin/sh

EXE=xbgas

CC=$(RISCV)/bin/riscv64-unknown-elf-gcc
CXX=$(RISCV)/bin/riscv64-unknown-elf-g++
XBGAS_AS=$(RISCV)/bin/llvm-mc
XBGAS_AS_FLAGS=-assemble -filetype=obj -triple=riscv-unknown-linux -show-encoding -mcpu=xbgas
CFLAGS=-O0 -g
CXXFLAGS=-O0 -g

all: $(EXE).exe
xbgas.o: xbgas.s
	$(XBGAS_AS) $(XBGAS_AS_FLAGS) -o $@ $<
main.o: main.c
	$(CC) $(CFLAGS) -c -o $@ $<
$(EXE).exe: main.o xbgas.o
	$(CC) -o $@ $<
