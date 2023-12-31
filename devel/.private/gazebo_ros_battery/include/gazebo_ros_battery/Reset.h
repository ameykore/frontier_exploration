// Generated by gencpp from file gazebo_ros_battery/Reset.msg
// DO NOT EDIT!


#ifndef GAZEBO_ROS_BATTERY_MESSAGE_RESET_H
#define GAZEBO_ROS_BATTERY_MESSAGE_RESET_H

#include <ros/service_traits.h>


#include <gazebo_ros_battery/ResetRequest.h>
#include <gazebo_ros_battery/ResetResponse.h>


namespace gazebo_ros_battery
{

struct Reset
{

typedef ResetRequest Request;
typedef ResetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Reset
} // namespace gazebo_ros_battery


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::gazebo_ros_battery::Reset > {
  static const char* value()
  {
    return "4ebe8e339b87d71255ac97ce88254b89";
  }

  static const char* value(const ::gazebo_ros_battery::Reset&) { return value(); }
};

template<>
struct DataType< ::gazebo_ros_battery::Reset > {
  static const char* value()
  {
    return "gazebo_ros_battery/Reset";
  }

  static const char* value(const ::gazebo_ros_battery::Reset&) { return value(); }
};


// service_traits::MD5Sum< ::gazebo_ros_battery::ResetRequest> should match
// service_traits::MD5Sum< ::gazebo_ros_battery::Reset >
template<>
struct MD5Sum< ::gazebo_ros_battery::ResetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::gazebo_ros_battery::Reset >::value();
  }
  static const char* value(const ::gazebo_ros_battery::ResetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::gazebo_ros_battery::ResetRequest> should match
// service_traits::DataType< ::gazebo_ros_battery::Reset >
template<>
struct DataType< ::gazebo_ros_battery::ResetRequest>
{
  static const char* value()
  {
    return DataType< ::gazebo_ros_battery::Reset >::value();
  }
  static const char* value(const ::gazebo_ros_battery::ResetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::gazebo_ros_battery::ResetResponse> should match
// service_traits::MD5Sum< ::gazebo_ros_battery::Reset >
template<>
struct MD5Sum< ::gazebo_ros_battery::ResetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::gazebo_ros_battery::Reset >::value();
  }
  static const char* value(const ::gazebo_ros_battery::ResetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::gazebo_ros_battery::ResetResponse> should match
// service_traits::DataType< ::gazebo_ros_battery::Reset >
template<>
struct DataType< ::gazebo_ros_battery::ResetResponse>
{
  static const char* value()
  {
    return DataType< ::gazebo_ros_battery::Reset >::value();
  }
  static const char* value(const ::gazebo_ros_battery::ResetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // GAZEBO_ROS_BATTERY_MESSAGE_RESET_H
