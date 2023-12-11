// Generated by gencpp from file gazebo_ros_battery/SetChargeResponse.msg
// DO NOT EDIT!


#ifndef GAZEBO_ROS_BATTERY_MESSAGE_SETCHARGERESPONSE_H
#define GAZEBO_ROS_BATTERY_MESSAGE_SETCHARGERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Bool.h>

namespace gazebo_ros_battery
{
template <class ContainerAllocator>
struct SetChargeResponse_
{
  typedef SetChargeResponse_<ContainerAllocator> Type;

  SetChargeResponse_()
    : set()  {
    }
  SetChargeResponse_(const ContainerAllocator& _alloc)
    : set(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Bool_<ContainerAllocator>  _set_type;
  _set_type set;





  typedef boost::shared_ptr< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetChargeResponse_

typedef ::gazebo_ros_battery::SetChargeResponse_<std::allocator<void> > SetChargeResponse;

typedef boost::shared_ptr< ::gazebo_ros_battery::SetChargeResponse > SetChargeResponsePtr;
typedef boost::shared_ptr< ::gazebo_ros_battery::SetChargeResponse const> SetChargeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator1> & lhs, const ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator2> & rhs)
{
  return lhs.set == rhs.set;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator1> & lhs, const ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gazebo_ros_battery

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e32d9ae87ed2d440e676d16561c582ef";
  }

  static const char* value(const ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe32d9ae87ed2d440ULL;
  static const uint64_t static_value2 = 0xe676d16561c582efULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_ros_battery/SetChargeResponse";
  }

  static const char* value(const ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Bool set\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Bool\n"
"bool data\n"
;
  }

  static const char* value(const ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.set);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetChargeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_ros_battery::SetChargeResponse_<ContainerAllocator>& v)
  {
    s << indent << "set: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.set);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_ROS_BATTERY_MESSAGE_SETCHARGERESPONSE_H