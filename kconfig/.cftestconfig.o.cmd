cmd_scripts/kconfig/cftestconfig.o := g++ -Wp,-MMD,scripts/kconfig/.cftestconfig.o.d -Wall -O2    -std=c++17 -fPIC -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/x86_64-linux-gnu/qt5 -c -o scripts/kconfig/cftestconfig.o scripts/kconfig/cftestconfig.cc

source_scripts/kconfig/cftestconfig.o := scripts/kconfig/cftestconfig.cc

deps_scripts/kconfig/cftestconfig.o := \
  scripts/kconfig/cftestconfig.h \

scripts/kconfig/cftestconfig.o: $(deps_scripts/kconfig/cftestconfig.o)

$(deps_scripts/kconfig/cftestconfig.o):
