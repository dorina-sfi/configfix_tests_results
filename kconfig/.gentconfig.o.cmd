cmd_scripts/kconfig/gentconfig.o := g++ -Wp,-MMD,scripts/kconfig/.gentconfig.o.d -Wall -O2    -std=c++17 -fPIC -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -c -o scripts/kconfig/gentconfig.o scripts/kconfig/gentconfig.cc

source_scripts/kconfig/gentconfig.o := scripts/kconfig/gentconfig.cc

deps_scripts/kconfig/gentconfig.o := \
    $(wildcard include/config/BASE) \
    $(wildcard include/config/FOLDER) \
  scripts/kconfig/lkc.h \
    $(wildcard include/config/prefix) \
  scripts/kconfig/expr.h \
  scripts/kconfig/list.h \
  scripts/kconfig/lkc_proto.h \
  scripts/kconfig/gentconfig.h \
  scripts/kconfig/configfix.h \
  scripts/kconfig/cf_defs.h \
  scripts/kconfig/picosat.h \
  scripts/kconfig/cf_constraints.h \
  scripts/kconfig/cf_expr.h \
  scripts/kconfig/cf_rangefix.h \
  scripts/kconfig/cf_satutils.h \
  scripts/kconfig/cf_utils.h \

scripts/kconfig/gentconfig.o: $(deps_scripts/kconfig/gentconfig.o)

$(deps_scripts/kconfig/gentconfig.o):
