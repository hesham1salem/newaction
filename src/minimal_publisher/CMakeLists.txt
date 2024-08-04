cmake_minimum_required(VERSION 3.5)
project(examples_rclcpp_minimal_publisher)

# Default to C++17
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)

add_executable(publisher_member_function member_function.cpp)
ament_target_dependencies(publisher_member_function rclcpp std_msgs)




install(TARGETS
  
  publisher_member_function

  DESTINATION lib/${PROJECT_NAME}
)

if(BUILD_TESTING)
  find_package(ament_cmake_gtest REQUIRED)
  ament_add_gtest(${PROJECT_NAME}_test_simple_publisher test/test_simple_publisher.cpp)
  target_include_directories(${PROJECT_NAME}_test_simple_publisher PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
  )
  ament_target_dependencies(${PROJECT_NAME}_test_simple_publisher
    std_msgs
    rclcpp
  )
 #target_link_libraries(${PROJECT_NAME}_test_simple_publisher publisher_member_function)
endif()
ament_package()
