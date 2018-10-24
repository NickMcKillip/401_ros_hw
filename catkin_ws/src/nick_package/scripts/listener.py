#!/usr/bin/env python
import rospy
from nick_package.msg import nick_msg


def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard:")
    print("string:", data.s)
    print("int64:", data.n)
    print("array:", data.a)

    


def listener():
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", nick_msg, callback)

    rospy.spin()


if __name__ == '__main__':
    listener()
