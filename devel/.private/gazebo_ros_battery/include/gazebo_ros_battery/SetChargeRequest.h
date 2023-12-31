// Generated by gencpp from file gazebo_ros_battery/SetChargeRequest.msg
// DO NOT EDIT!


#ifndef GAZEBO_ROS_BATTERY_MESSAGE_SETCHARGEREQUEST_H
#define GAZEBO_ROS_BATTERY_MESSAGE_SETCHARGEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>

namespace gazebo_ros_battery
{
template <class ContainerAllocator>
struct SetChargeRequest_
{
  typedef SetChargeRequest_<ContainerAllocator> Type;

  SetChargeRequest_()
    : charge()  {
    }
  SetChargeRequest_(const ContainerAllocator& _alloc)
    : charge(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _charge_type;
  _charge_type charge;





  typedef boost::shared_ptr< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetChargeRequest_

typedef ::gazebo_ros_battery::SetChargeRequest_<std::allocator<void> > SetChargeRequest;

typedef boost::shared_ptr< ::gazebo_ros_battery::SetChargeRequest > SetChargeRequestPtr;
typedef boost::shared_ptr< ::gazebo_ros_battery::SetChargeRequest const> SetChargeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator1> & lhs, const ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.charge == rhs.charge;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator1> & lhs, const ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gazebo_ros_battery

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "80f59c2acac1a7362fdf8f840f6184ab";
  }

  static const char* value(const ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x80f59c2acac1a736ULL;
  static const uint64_t static_value2 = 0x2fdf8f840f6184abULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_ros_battery/SetChargeRequest";
  }

  static const char* value(const ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 charge\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.charge);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetChargeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_ros_battery::SetChargeRequest_<ContainerAllocator>& v)
  {
    s << indent << "charge: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.charge);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_ROS_BATTERY_MESSAGE_SETCHARGEREQUEST_H
