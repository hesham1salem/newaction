# CMake generated Testfile for 
# Source directory: /home/hesham/Pictures/newaction/src/minimal_publisher
# Build directory: /home/hesham/Pictures/newaction/build/minimal_publisher
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(minimal_publisher_test "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/hesham/Pictures/newaction/build/minimal_publisher/test_results/minimal_publisher/minimal_publisher_test.gtest.xml" "--package-name" "minimal_publisher" "--output-file" "/home/hesham/Pictures/newaction/build/minimal_publisher/ament_cmake_gtest/minimal_publisher_test.txt" "--command" "/home/hesham/Pictures/newaction/build/minimal_publisher/minimal_publisher_test" "--gtest_output=xml:/home/hesham/Pictures/newaction/build/minimal_publisher/test_results/minimal_publisher/minimal_publisher_test.gtest.xml")
set_tests_properties(minimal_publisher_test PROPERTIES  LABELS "gtest" REQUIRED_FILES "/home/hesham/Pictures/newaction/build/minimal_publisher/minimal_publisher_test" TIMEOUT "60" WORKING_DIRECTORY "/home/hesham/Pictures/newaction/build/minimal_publisher" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_gtest/cmake/ament_add_gtest_test.cmake;86;ament_add_test;/opt/ros/foxy/share/ament_cmake_gtest/cmake/ament_add_gtest.cmake;93;ament_add_gtest_test;/home/hesham/Pictures/newaction/src/minimal_publisher/CMakeLists.txt;22;ament_add_gtest;/home/hesham/Pictures/newaction/src/minimal_publisher/CMakeLists.txt;0;")
subdirs("gtest")
