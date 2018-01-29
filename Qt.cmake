function(QT_INCLUSION)

	set(CMAKE_INCLUDE_CURRENT_DIR ON)
	set(CMAKE_AUTOMOC ON)

	find_package(Qt5Core REQUIRED)
	find_package(Qt5Xml REQUIRED)

endfunction()


function(QT_LINK PROJECT_NAME)
	message(STATUS "${PROJECT_NAME} <Linking>: ")
	target_link_libraries(${PROJECT_NAME} Qt5::Core Qt5::Xml)
endfunction()



