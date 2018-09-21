######################################################################
# Automatically generated by qmake (3.0) ?? 2? 4 17:49:37 2017
######################################################################

QT += KSyntaxHighlighting
QT += core
QT += dbus
QT += gui
QT += network
QT += printsupport
QT += svg
QT += widgets
QT += x11extras
QT += KCodecs

TEMPLATE = app
TARGET = deepin-editor

CONFIG += link_pkgconfig
CONFIG += c++11
PKGCONFIG += xcb xcb-util dtkwidget dtkwm
RESOURCES += deepin-editor.qrc

# Input
HEADERS += window.h \
           startmanager.h \
           dbusinterface.h \
           dtextedit.h \
           jumplinebar.h \
           findbar.h \
           replacebar.h \
           linebar.h \
           settings.h \
           tabwidget.h \
           tabbar.h \
           editorbuffer.h \
           uncommentselection.h \
           utils.h \
           urlinfo.h \
           fileloadthread.h \
           themewidgets/themepanel.h \
           themewidgets/themelistview.h \
           themewidgets/themeitemdelegate.h \
           themewidgets/themelistmodel.h

SOURCES += window.cpp \
           startmanager.cpp \
           dbusinterface.cpp \
           dtextedit.cpp \
           jumplinebar.cpp \
           findbar.cpp \
           replacebar.cpp \
           linebar.cpp \
           settings.cpp \
           settingsdialog.cpp \
           tabwidget.cpp \
           tabbar.cpp \
           editorbuffer.cpp \
           utils.cpp \
           uncommentselection.cpp \
           main.cpp \
           fileloadthread.cpp \
           themewidgets/themepanel.cpp \
           themewidgets/themelistview.cpp \
           themewidgets/themeitemdelegate.cpp \
           themewidgets/themelistmodel.cpp

QMAKE_CXXFLAGS += -g
LIBS += -lX11 -lXext -lXtst

isEmpty(BINDIR):BINDIR=/usr/bin
isEmpty(APPDIR):APPDIR=/usr/share/applications
isEmpty(DSRDIR):DSRDIR=/usr/share/deepin-editor

target.path = $$INSTROOT$$BINDIR
desktop.path = $$INSTROOT$$APPDIR
desktop.files = $$PWD/../deepin-editor.desktop

themes.path = $$DSRDIR/themes
themes.files += themes/deepin.theme
themes.files += themes/breeze_dark.theme
themes.files += themes/solarized_dark.theme
themes.files += themes/solarized_light.theme
themes.files += themes/atom_dark.theme

INSTALLS += target desktop themes