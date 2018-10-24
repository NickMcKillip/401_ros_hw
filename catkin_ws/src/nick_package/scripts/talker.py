#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
from nick_package.msg import nick_msg
import random
def talker():
    pub = rospy.Publisher('chatter',nick_msg, queue_size=30)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        msg = nick_msg()
	msg.s = hello_str
	r = random.randint(1,11)
	msg.n = r
        msg.a = [r**2,r**3,r**4]
	rospy.loginfo(msg)
	pub.publish(msg)
	rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
