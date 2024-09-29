cmake_minimum_required(VERSION 3.25)
project(radar C)

set(CMAKE_C_STANDARD 11)

find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK3 REQUIRED gtk+-3.0)

include_directories(${GTK3_INCLUDE_DIRS})

add_subdirectory(servo)
add_subdirectory(sonar)
add_subdirectory(gui)

add_executable(radar main.c)

target_link_libraries(radar
    servo_lib
    sonar_lib
    wiringPi
    pthread
    radar_gui
    ${GTK3_LIBRARIES}  
    m                
)
