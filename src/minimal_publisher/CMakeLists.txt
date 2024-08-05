cmake_minimum_required(VERSION 3.5)
project(minimal_publisher)


find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)

add_executable(publisher_member_function main.cpp member_function.cpp)
target_include_directories(publisher_member_function PUBLIC include)
ament_target_dependencies(publisher_member_function rclcpp std_msgs)



install(TARGETS
  publisher_member_function
  DESTINATION lib/${PROJECT_NAME}
)

if(BUILD_TESTING)
  find_package(ament_cmake_gtest REQUIRED)
  ament_add_gtest(${PROJECT_NAME}_test test/test_simple_publisher.cpp member_function.cpp )
  target_include_directories(${PROJECT_NAME}_test PUBLIC include)
  ament_target_dependencies(${PROJECT_NAME}_test std_msgs rclcpp)
endif()
ament_package()
