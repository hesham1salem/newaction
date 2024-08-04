#include <gtest/gtest.h>
#include <rclcpp/rclcpp.hpp>
#include <std_msgs/msg/string.hpp>
#include <member_function.hh>
class TestSimplePublisher : public ::testing::Test
{
protected:
    void SetUp() override
    {
        rclcpp::init(0, nullptr);
        node_ = std::make_shared<rclcpp::Node>("test_node");
        subscription_ = node_->create_subscription<std_msgs::msg::String>(
            "chatter", 10, [this](std_msgs::msg::String::SharedPtr msg) {
                received_message_ = msg->data;
                received_ = true;
            });
    }

    void TearDown() override
    {
        rclcpp::shutdown();
    }

    std::shared_ptr<rclcpp::Node> node_;
    rclcpp::Subscription<std_msgs::msg::String>::SharedPtr subscription_;
    std::string received_message_;
    bool received_ = false;
};

TEST_F(TestSimplePublisher, TestPublishMessage)
{
    // auto node = std::make_shared<MinimalPublisher>();

    // // Spin for a short time to allow the message to be published and received
    // rclcpp::spin_some(node);
    // rclcpp::spin_some(node_);

    // EXPECT_TRUE(received_);
    //EXPECT_EQ(received_message_, "Hello, ROS 2!");
    EXPECT_EQ("Hello, ROS 2!", "Hello, ROS 2!");
    EXPECT_EQ("different", "Hello, ROS 2!");


}

int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
