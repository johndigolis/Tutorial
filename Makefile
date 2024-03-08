final_tutorial.dmp: tutorial.elf
		riscv64-unknown-elf-objdump -d tutorial.elf>final_tutorial.dmp
tutorial.elf: tutorial.c
		riscv64-unknown-elf-gcc -O3 -Wall -nostdlib -march=rv32imav -mabi=ilp32 tutorial.c function.h fact.s -o tutorial.elf
clean:
		rm tutorial.elf final_tutorial.dmp