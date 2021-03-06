// Generated by gencpp from file nick_package/nick_msg.msg
// DO NOT EDIT!


#ifndef NICK_PACKAGE_MESSAGE_NICK_MSG_H
#define NICK_PACKAGE_MESSAGE_NICK_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace nick_package
{
template <class ContainerAllocator>
struct nick_msg_
{
  typedef nick_msg_<ContainerAllocator> Type;

  nick_msg_()
    : n(0)
    , s()
    , a()  {
    }
  nick_msg_(const ContainerAllocator& _alloc)
    : n(0)
    , s(_alloc)
    , a(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _n_type;
  _n_type n;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _s_type;
  _s_type s;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _a_type;
  _a_type a;





  typedef boost::shared_ptr< ::nick_package::nick_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nick_package::nick_msg_<ContainerAllocator> const> ConstPtr;

}; // struct nick_msg_

typedef ::nick_package::nick_msg_<std::allocator<void> > nick_msg;

typedef boost::shared_ptr< ::nick_package::nick_msg > nick_msgPtr;
typedef boost::shared_ptr< ::nick_package::nick_msg const> nick_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nick_package::nick_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nick_package::nick_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nick_package

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'nick_package': ['/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nick_package::nick_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nick_package::nick_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nick_package::nick_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nick_package::nick_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nick_package::nick_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nick_package::nick_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nick_package::nick_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b032e12b06e68c838c7198038d244ba6";
  }

  static const char* value(const ::nick_package::nick_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb032e12b06e68c83ULL;
  static const uint64_t static_value2 = 0x8c7198038d244ba6ULL;
};

template<class ContainerAllocator>
struct DataType< ::nick_package::nick_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nick_package/nick_msg";
  }

  static const char* value(const ::nick_package::nick_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nick_package::nick_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 n\n\
string s\n\
float64[] a\n\
";
  }

  static const char* value(const ::nick_package::nick_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nick_package::nick_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.n);
      stream.next(m.s);
      stream.next(m.a);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct nick_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nick_package::nick_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nick_package::nick_msg_<ContainerAllocator>& v)
  {
    s << indent << "n: ";
    Printer<int64_t>::stream(s, indent + "  ", v.n);
    s << indent << "s: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.s);
    s << indent << "a[]" << std::endl;
    for (size_t i = 0; i < v.a.size(); ++i)
    {
      s << indent << "  a[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.a[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NICK_PACKAGE_MESSAGE_NICK_MSG_H
