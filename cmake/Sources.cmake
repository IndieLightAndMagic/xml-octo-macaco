
function(SOURCES_INCLUDE)
	set(SOURCES_HEADERS ${CMAKE_SOURCE_DIR}/src/cpp)
	include_directories(${SOURCES_HEADERS})
endfunction()

function(SOURCES_TO_COMPILE PROJECT_NAME QT_RESOURCES)
	set(SOURCES_CPP
			${CMAKE_SOURCE_DIR}/src/cpp/main.cpp
			${CMAKE_SOURCE_DIR}/src/cpp/ColladaXMLHandler.cpp
			)
	add_executable(${PROJECT_NAME} ${SOURCES_CPP} ${QT_RESOURCES})
endfunction() 
