#Collada Parsing Example CMakeLists.txt
#
#   Author: Julián Andrés Guarín Reyes
#   Version: 0.0.1
#   Date: January, 2018.

cmake_minimum_required(VERSION 3.9.0)

#Project is XMLReaderSample
set(ProjectName XMLReaderSample)
project(${ProjectName})

#Info variables
include(cmake/Info.cmake)

#Utility messages
include(cmake/Messages.cmake)

#Resources
include(cmake/Resources.cmake)

#Qt Requirements
include(cmake/Qt.cmake)

#Sources to include
include(cmake/Sources.cmake)




PrintLine()
HeaderMessage("XMLReaderSample By Julian Guarin")


#Include Qt from Qt.cmake
QT_INCLUSION()

message(STATUS "QT RESOURCES FILES:")
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



