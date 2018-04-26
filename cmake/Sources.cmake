
get_directory_property(hasParent PARENT_DIRECTORY)
if(hasParent)
	message(STATUS "Has a parent scope.")
else()
	message(STATUS "Doesn't have a parent scope.")
endif()

#Sources 
set(SOURCES_CPP 
	${CMAKE_SOURCE_DIR}/src/cpp/main.cpp
	${CMAKE_SOURCE_DIR}/src/cpp/ColladaXMLHandler.cpp
	PARENT_SCOPE)


#Headers
set(SOURCES_HEADERS ${CMAKE_SOURCE_DIR}/src/cpp PARENT_SCOPE)




function(SOURCES_INCLUDE)
	include_directories(${SOURCES_HEADERS})
endfunction()

function(SOURCES_TO_COMPILE PROJECT_NAME QT_RESOURCES)
	add_executable(${PROJECT_NAME} ${SOURCES_CPP} ${QT_RESOURCES})
endfunction() 
