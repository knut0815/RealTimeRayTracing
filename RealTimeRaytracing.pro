#-------------------------------------------------
#
# Project created by QtCreator 2015-10-25T14:56:30
#
#-------------------------------------------------

#Requires Qt 5.4 or above.
QT       += core opengl

CONFIG += c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = RealTimeRaytracing
TEMPLATE = app

INCLUDEPATH += glm

SOURCES += *.cpp \
    drawables.cpp

HEADERS  += *.h \
    drawables.h
HEADERS  += *.hpp

macx {

#Must choose proper sdk
QMAKE_MAC_SDK = macosx10.11

#link to mac os framework
LIBS += -framework OpenCL

#Suppress CLANG warning
QMAKE_CXXFLAGS += -Wno-inconsistent-missing-override
}




OTHER_FILES += \
    cl_files/raytracing.cl

RESOURCES += \
    kernels.qrc

OTHER_FILES += README.md

win32 {

LIBS += -lopengl32

#AMD
LIBS += $$_PRO_FILE_PWD_/AMD/lib_x86_64/libOpenCL.a
#LIBS += $$_PRO_FILE_PWD_/AMD/lib_x86_64/libglut64.a
#LIBS += $$_PRO_FILE_PWD_/AMD/lib_x86_64/libglew64.dll.a
#LIBS += $$_PRO_FILE_PWD_/AMD/lib_x86_64/libOpenCL.a
INCLUDEPATH += $$_PRO_FILE_PWD_/AMD/include

}
