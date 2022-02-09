cmd_scripts/kconfig/cfconfig.o := gcc -Wp,-MMD,scripts/kconfig/.cfconfig.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89       -c -o scripts/kconfig/cfconfig.o scripts/kconfig/cfconfig.c

source_scripts/kconfig/cfconfig.o := scripts/kconfig/cfconfig.c

deps_scripts/kconfig/cfconfig.o := \
  scripts/kconfig/configfix.h \
  scripts/kconfig/lkc.h \
    $(wildcard include/config/prefix) \
  scripts/kconfig/expr.h \
  scripts/kconfig/list.h \
  scripts/kconfig/lkc_proto.h \
  scripts/kconfig/cf_defs.h \
  scripts/kconfig/picosat.h \
  scripts/kconfig/cf_constraints.h \
  scripts/kconfig/cf_expr.h \
  scripts/kconfig/cf_rangefix.h \
  scripts/kconfig/cf_satutils.h \
  scripts/kconfig/cf_utils.h \

scripts/kconfig/cfconfig.o: $(deps_scripts/kconfig/cfconfig.o)

$(deps_scripts/kconfig/cfconfig.o):
