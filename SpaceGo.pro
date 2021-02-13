# SpaceGo

QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += $$files(*.cpp)
HEADERS += $$files(*.h)

# FORMS +=     mainwindow.ui

################
# SFML

INCLUDEPATH += D:/SFML/windows-gcc-810-mingw-64/include
DEPENDPATH += D:/SFML/windows-gcc-810-mingw-64/include

LIBS += -LD:/SFML/windows-gcc-810-mingw-64/lib

#Release Configuration
CONFIG(release, debug|release):
{
#Audio Related Libs
LIBS += -lsfml-audio-s          #SFML Static Module
LIBS += -lopenal32              #Dependency
LIBS += -lFLAC                  #Dependency
LIBS += -lvorbisenc             #Dependency
LIBS += -lvorbisfile            #Dependency
LIBS += -lvorbis                #Dependency
LIBS += -logg                   #Dependency

#SFML-Graphics Libs
LIBS += -lsfml-graphics-s       #SFML Static Module
LIBS += -lfreetype              #Dependency
LIBS += -ljpeg                  #Dependency

#SFML-Network Libs
LIBS += -lsfml-network-s        #SFML Static Module
LIBS += -lws2_32                #Dependency

#SFML-Window Libs
LIBS += -lsfml-window-s         #SFML Static Module
LIBS += -lopengl32              #Dependency
LIBS += -lgdi32                 #Dependency

#SFML-System Libs
LIBS += -lsfml-system-s         #SFML Static Module
LIBS += -lwinmm                 #Dependency
}

#Debug Configuration
CONFIG(debug, debug|release):
{
#Audio Related Libs
LIBS += -lsfml-audio-s-d        #SFML Static Module
LIBS += -lopenal32              #Dependency
LIBS += -lFLAC                  #Dependency
LIBS += -lvorbisenc             #Dependency
LIBS += -lvorbisfile            #Dependency
LIBS += -lvorbis                #Dependency
LIBS += -logg                   #Dependency

#SFML-Graphics Libs
LIBS += -lsfml-graphics-s-d     #SFML Static Module
LIBS += -lfreetype              #Dependency
LIBS += -ljpeg                  #Dependency

#SFML-Network Libs
LIBS += -lsfml-network-s-d      #SFML Static Module
LIBS += -lws2_32                #Dependency

#SFML-Window Libs
LIBS += -lsfml-window-s-d       #SFML Static Module
LIBS += -lopengl32              #Dependency
LIBS += -lgdi32                 #Dependency

#SFML-System Libs
LIBS += -lsfml-system-s-d       #SFML Static Module
LIBS += -lwinmm                 #Dependency
}

################

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
