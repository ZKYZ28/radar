# CMakeLists.txt pour le dossier gui
add_library(radar_gui radar_gui.c)
target_include_directories(radar_gui PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(radar_gui ${GTK3_LIBRARIES})