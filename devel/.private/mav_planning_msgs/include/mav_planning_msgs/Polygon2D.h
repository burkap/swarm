// Generated by gencpp from file mav_planning_msgs/Polygon2D.msg
// DO NOT EDIT!


#ifndef MAV_PLANNING_MSGS_MESSAGE_POLYGON2D_H
#define MAV_PLANNING_MSGS_MESSAGE_POLYGON2D_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mav_planning_msgs/Point2D.h>

namespace mav_planning_msgs
{
template <class ContainerAllocator>
struct Polygon2D_
{
  typedef Polygon2D_<ContainerAllocator> Type;

  Polygon2D_()
    : points()  {
    }
  Polygon2D_(const ContainerAllocator& _alloc)
    : points(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::mav_planning_msgs::Point2D_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::mav_planning_msgs::Point2D_<ContainerAllocator> >::other >  _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> const> ConstPtr;

}; // struct Polygon2D_

typedef ::mav_planning_msgs::Polygon2D_<std::allocator<void> > Polygon2D;

typedef boost::shared_ptr< ::mav_planning_msgs::Polygon2D > Polygon2DPtr;
typedef boost::shared_ptr< ::mav_planning_msgs::Polygon2D const> Polygon2DConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mav_planning_msgs::Polygon2D_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mav_planning_msgs::Polygon2D_<ContainerAllocator1> & lhs, const ::mav_planning_msgs::Polygon2D_<ContainerAllocator2> & rhs)
{
  return lhs.points == rhs.points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mav_planning_msgs::Polygon2D_<ContainerAllocator1> & lhs, const ::mav_planning_msgs::Polygon2D_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mav_planning_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f02263beef99aa03117a577a3eb879d";
  }

  static const char* value(const ::mav_planning_msgs::Polygon2D_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f02263beef99aa0ULL;
  static const uint64_t static_value2 = 0x3117a577a3eb879dULL;
};

template<class ContainerAllocator>
struct DataType< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mav_planning_msgs/Polygon2D";
  }

  static const char* value(const ::mav_planning_msgs::Polygon2D_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A specification of a 2D polygon where the first and last points are assumed to be connected.\n"
"mav_planning_msgs/Point2D[] points\n"
"\n"
"================================================================================\n"
"MSG: mav_planning_msgs/Point2D\n"
"# This contains the position of a 2D point.\n"
"float64 x\n"
"float64 y\n"
;
  }

  static const char* value(const ::mav_planning_msgs::Polygon2D_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Polygon2D_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mav_planning_msgs::Polygon2D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mav_planning_msgs::Polygon2D_<ContainerAllocator>& v)
  {
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mav_planning_msgs::Point2D_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAV_PLANNING_MSGS_MESSAGE_POLYGON2D_H
