cmd_scripts/kconfig/cftestgenconfig.o := g++ -Wp,-MMD,scripts/kconfig/.cftestgenconfig.o.d -Wall -O2    -std=c++17 -fPIC -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/x86_64-linux-gnu/qt5 -c -o scripts/kconfig/cftestgenconfig.o scripts/kconfig/cftestgenconfig.cc

source_scripts/kconfig/cftestgenconfig.o := scripts/kconfig/cftestgenconfig.cc

deps_scripts/kconfig/cftestgenconfig.o := \
  scripts/kconfig/lkc.h \
    $(wildcard include/config/prefix) \
  scripts/kconfig/expr.h \
  scripts/kconfig/list.h \
  scripts/kconfig/lkc_proto.h \
  scripts/kconfig/cftestgenconfig.h \
  scripts/kconfig/configfix.h \
  scripts/kconfig/cf_defs.h \
  scripts/kconfig/picosat.h \
  scripts/kconfig/cf_constraints.h \
  scripts/kconfig/cf_expr.h \
  scripts/kconfig/cf_rangefix.h \
  scripts/kconfig/cf_satutils.h \
  scripts/kconfig/cf_utils.h \

scripts/kconfig/cftestgenconfig.o: $(deps_scripts/kconfig/cftestgenconfig.o)

$(deps_scripts/kconfig/cftestgenconfig.o):
