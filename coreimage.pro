#-------------------------------------------------
#
# Project created by QtCreator 2018-08-20T09:12:54
#
#-------------------------------------------------

QT       += core gui widgets concurrent

TARGET = coreimage
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += c++11
CONFIG += silent warn_on

# library for theme
unix:!macx: LIBS += /usr/lib/libcprime.a

FORMS += \
    coreimage.ui

HEADERS += \
    coreimage.h

SOURCES += \
    coreimage.cpp \
    main.cpp

RESOURCES += \
    icons.qrc

# Default rules for deployment.

# Don't do this with other pro file
#qnx: target.path = /tmp/$${TARGET}/bin
#else: unix:!android: target.path = /opt/$${TARGET}/bin

isEmpty(PREFIX) {
        PREFIX = /usr
}
BINDIR = $$PREFIX/bin

target.path = $$BINDIR

desktop.path = $$PREFIX/share/applications/
desktop.files = CoreImage.desktop

icons.path = $$PREFIX/share/icons/CoreBox/
icons.files = icons/CoreImage.svg

target.path = /usr/bin
INSTALLS += target desktop icons

