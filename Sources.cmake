

#Sources 
set(SOURCES_CPP 
	${CMAKE_SOURCE_DIR}/main.cpp
	${CMAKE_SOURCE_DIR}/src/ColladaXMLHandler.cpp
	PARENT_SCOPE)


#Headers
set(SOURCES_HEADERS ${CMAKE_SOURCE_DIR}/src PARENT_SCOPE)




function(SOURCES_INCLUDE)
	include_directories(${SOURCES_HEADERS})
endfunction()

function(SOURCES_TO_COMPILE PROJECT_NAME QT_RESOURCES)
	add_executable(${PROJECT_NAME} ${SOURCES_CPP} ${QT_RESOURCES})
endfunction() 
