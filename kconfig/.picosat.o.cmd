cmd_scripts/kconfig/picosat.o := gcc -Wp,-MMD,scripts/kconfig/.picosat.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89      -DTRACE -Wno-missing-prototypes -Wno-pointer-compare -c -o scripts/kconfig/picosat.o scripts/kconfig/picosat.c

source_scripts/kconfig/picosat.o := scripts/kconfig/picosat.c

deps_scripts/kconfig/picosat.o := \
  scripts/kconfig/picosat.h \

scripts/kconfig/picosat.o: $(deps_scripts/kconfig/picosat.o)

$(deps_scripts/kconfig/picosat.o):
