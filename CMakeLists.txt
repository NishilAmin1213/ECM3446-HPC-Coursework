cmake_minimum_required(VERSION 3.9)
project(ECM3446_HPC_Coursework C)

set(CMAKE_C_STANDARD 99)

# Increase the stack size to 16mb to prevent a stack overflow error
# This is only needed for my windows machine not on MacOS or Linux
MATH(EXPR stack_size "16 * 1024 * 1024")
set(CMAKE_EXE_LINKER_FLAGS "-Wl,--stack,${stack_size}")

# Compile the serial program
add_executable(ECM3446_HPC_Coursework_Serial advection2D.c)

# find OpenMP and Compile the parallel program for Task 1
find_package(OpenMP REQUIRED)
add_executable(ECM3446_HPC_Coursework_Task1_S advection2DT1.c)
add_executable(ECM3446_HPC_Coursework_Task1_P advection2DT1.c)
if(OpenMP_C_FOUND)
    target_link_libraries(ECM3446_HPC_Coursework_Task1_P PUBLIC OpenMP::OpenMP_C)
endif()

# find OpenMP and Compile the parallel program for Task 2
find_package(OpenMP REQUIRED)
add_executable(ECM3446_HPC_Coursework_Task2_S advection2DT2.c)
add_executable(ECM3446_HPC_Coursework_Task2_P advection2DT2.c)
if(OpenMP_C_FOUND)
    target_link_libraries(ECM3446_HPC_Coursework_Task2_P PUBLIC OpenMP::OpenMP_C)
endif()

# find OpenMP and Compile the parallel program for Task 2
find_package(OpenMP REQUIRED)
add_executable(ECM3446_HPC_Coursework_Task3_S advection2DT3.c)
add_executable(ECM3446_HPC_Coursework_Task3_P advection2DT3.c)
if(OpenMP_C_FOUND)
    target_link_libraries(ECM3446_HPC_Coursework_Task3_P PUBLIC OpenMP::OpenMP_C)
endif()

# find OpenMP and Compile the parallel program for Task 2
find_package(OpenMP REQUIRED)
add_executable(ECM3446_HPC_Coursework_Task4_S advection2DT4.c)
add_executable(ECM3446_HPC_Coursework_Task4_P advection2DT4.c)
if(OpenMP_C_FOUND)
    target_link_libraries(ECM3446_HPC_Coursework_Task4_P PUBLIC OpenMP::OpenMP_C)
endif()


