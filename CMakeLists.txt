#Collada Parsing Example CMakeLists.txt
#
#   Author: Julián Andrés Guarín Reyes
#   Version: 0.0.1
#   Date: January, 2018.

cmake_minimum_required(VERSION 3.9.0)

#Info variables
include(Info.cmake)

#Utility messages
include(Messages.cmake)

#Sources to include
include(Sources.cmake)

#Resources
include(Resources.cmake)

#Qt Requiere
include(Qt.cmake)


PrintLine()
HeaderMessage("XMLReaderSample By Julian Guarin")

#Project is XMLReaderSample
set(ProjectName XMLReaderSample)
project(${ProjectName})

#Include Qt from Qt.cmake
QT_INCLUSION()

message(STATUS "+++++++++++++++++++++++++++++++++")
message(STATUS "${QT_RESOURCES}")


PrintLine()
HeaderMessage("Adding Headers To Project")
SOURCES_INCLUDE()

PrintLine()
HeaderMessage("Adding Sources To Project")
SOURCES_TO_COMPILE(${ProjectName} ${QT_RESOURCES})

PrintLine()
HeaderMessage("Linking Qt Libraries")
QT_LINK(${ProjectName})



