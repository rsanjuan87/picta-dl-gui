QT       += core gui
QT       += network
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Picta-dl_GUI
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11
CONFIG += resources_big

SOURCES += main.cpp\
    RunGuard.cpp \
    mainwindow.cpp \
    configuration.cpp \
    simplecrypt.cpp \
    information.cpp

HEADERS += mainwindow.h \
    RunGuard.h \
    configuration.h \
    simplecrypt.h \
    information.h

FORMS += mainwindow.ui \
    configuration.ui \
    information.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    Resources/images.qrc \
    Resources/mainprocess.qrc \
    Resources/styles.qrc

# Code added by me
RC_ICONS = Resources/Logos/picta_dl_gui_icon.ico
VERSION = 1.0.0.0
RC_FILE = Resources/resManifest.rc


#MacOS app icon and info
macx: QMAKE_INFO_PLIST = Resources/Logos/Info.plist
macx: ICON = Resources/Logos/icon.icns

# End

DISTFILES += \
    .astylerc \
    Resources/Logos/icon.icns \
    Resources/Styles/winApp.qss


