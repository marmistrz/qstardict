CONFIG += link_pkgconfig
PKGCONFIG += glib-2.0
LIBS += -lz -lquazip5 -lstardict -L../plugins/stardict/

QT += dbus qml quick widgets quickcontrols2

INCLUDEPATH += ../plugins
#QMAKE_LFLAGS += -Wl,-rpath,\\$${LITERAL_DOLLAR}$${LITERAL_DOLLAR}ORIGIN/../share/harbour-sidudict/lib

INSTALLS += target
target.path = /usr/bin/

unix:DEFINES += HAVE_MMAP

CONFIG(release, debug|release) {
    DEFINES += QT_NO_DEBUG_OUTPUT
}

TARGET = harbour-sidudict
TEMPLATE = app

SOURCES += main.cpp \
        sidudictlib.cpp \
        dictlistmodel.cpp \
        suggestmodel.cpp \
        entrydictitem.cpp \
        downloadmanager.cpp

HEADERS  += logging.h \
         sidudictlib.h \
         dictlistmodel.h \
         suggestmodel.h \
         entrydictitem.h \
         downloadmanager.h \
        ../plugins/stardict/stardict.h

OTHER_FILES += qml/*.qml qml/*.js
