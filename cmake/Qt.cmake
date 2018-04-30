
function(QT_INCLUSION)

	message("Env var QTDIR: $ENV{QTDIR}")
	message("QT5 PREFIX PATH: $ENV{QTDIR}/lib/cmake")
	set(CMAKE_PREFIX_PATH $ENV{QTDIR}/lib/cmake)
	message(STATUS "NEW CMAKE PFX PATH: ${CMAKE_PREFIX_PATH}")

	set(CMAKE_INCLUDE_CURRENT_DIR ON)
	set(CMAKE_AUTOMOC ON)
	set(CMAKE_AUTORCC ON)
	set(CMAKE_AUTOUIC ON)

	find_package(Qt5Core REQUIRED)
	find_package(Qt5Xml REQUIRED)

	#QtQuick Stuff
	find_package(Qt5Widgets REQUIRED) 
	find_package(Qt5Qml REQUIRED)
	find_package(Qt5Quick REQUIRED)

	#Include Directories
	include_directories(
		${Qt5Core_INCLUDE_DIRS}
		${Qt5Widgets_INCLUDE_DIRS}
		${Qt5Qml_INCLUDE_DIRS}
		${Qt5Quick_INCLUDE_DIRS}
		)
        
        #Definitions
	add_definitions(
		${Qt5Widgets_DEFINITIONS}
		${Qt5Qml_DEFINITIONS}
		${Qt5Quick_DEFINITIONS}
		)

	#QML Resource files addition 
	qt5_add_resources(QT_RESOURCES ${CMAKE_SOURCE_DIR}/src/resources/qml.qrc)
	set(QT_RESOURCES ${QT_RESOURCES} PARENT_SCOPE)
	
	#C++ Compiler flags
	set(CMAKE_CXX_FLAGS 
		"${CMAKE_CXX_FLAGS} ${Qt5Widgets_INTERFACE_COMPILE_OPTIONS} -std=c++14"
		PARENT_SCOPE)

	set(CMAKE_INSTALL_CONFIG_NAME "Debug" PARENT_SCOPE)
	
	message(STATUS "==============================================================")
	message(STATUS "Widgets: ${Qt5Widgets_INCLUDE_DIRS}")
	message(STATUS "==============================================================")
	message(STATUS "Qml    : ${Qt5Qml_INCLUDE_DIRS}")
	message(STATUS "==============================================================")
	message(STATUS "Quick  : ${Qt5Quick_INCLUDE_DIRS}")
	message(STATUS "==============================================================")
	message(STATUS "==============================================================")
	message(STATUS "Widgets: ${Qt5Widgets_DEFINITIONS}")
	message(STATUS "==============================================================")
	message(STATUS "Qml    : ${Qt5Qml_DEFINITIONS}")
	message(STATUS "==============================================================")
	message(STATUS "Quick  : ${Qt5Quick_DEFINITIONS}")
	message(STATUS "==============================================================")
	message(STATUS "==============================================================")
	message(STATUS "Resources: ${QT_RESOURCES}")
	message(STATUS "==============================================================")
	message(STATUS "==============================================================")
	message(STATUS "Compileflags: ${CMAKE_CXX_FLAGS}")
	message(STATUS "==============================================================")
	

endfunction()


function(QT_LINK PROJECT_NAME)
	message(STATUS "${PROJECT_NAME} <Linking>: ")
	target_link_libraries(${PROJECT_NAME} Qt5::Core)
	target_link_libraries(${PROJECT_NAME} Qt5::Xml)
	target_link_libraries(${PROJECT_NAME} Qt5::Widgets)
	target_link_libraries(${PROJECT_NAME} Qt5::Qml)
	target_link_libraries(${PROJECT_NAME} Qt5::Quick)
endfunction()



