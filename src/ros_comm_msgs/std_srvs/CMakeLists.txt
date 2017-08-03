cmake_minimum_required(VERSION 2.8.3)
#################################################################
#  add crosscompiling Configuration
#################################################################
include(../../../tina_build_option.cmake)
#################################################################
project(std_srvs)

find_package(catkin REQUIRED COMPONENTS message_generation)

add_service_files(DIRECTORY srv
  FILES
  Empty.srv
  SetBool.srv
  Trigger.srv)

generate_messages()

catkin_package(CATKIN_DEPENDS message_runtime)
