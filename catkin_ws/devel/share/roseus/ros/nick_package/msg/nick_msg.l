;; Auto-generated. Do not edit!


(when (boundp 'nick_package::nick_msg)
  (if (not (find-package "NICK_PACKAGE"))
    (make-package "NICK_PACKAGE"))
  (shadow 'nick_msg (find-package "NICK_PACKAGE")))
(unless (find-package "NICK_PACKAGE::NICK_MSG")
  (make-package "NICK_PACKAGE::NICK_MSG"))

(in-package "ROS")
;;//! \htmlinclude nick_msg.msg.html


(defclass nick_package::nick_msg
  :super ros::object
  :slots (_n _s _a ))

(defmethod nick_package::nick_msg
  (:init
   (&key
    ((:n __n) 0)
    ((:s __s) "")
    ((:a __a) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _n (round __n))
   (setq _s (string __s))
   (setq _a __a)
   self)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int64 _n
    8
    ;; string _s
    4 (length _s)
    ;; float64[] _a
    (* 8    (length _a)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _n
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _n (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _n) (= (length (_n . bv)) 2)) ;; bignum
              (write-long (ash (elt (_n . bv) 0) 0) s)
              (write-long (ash (elt (_n . bv) 1) -1) s))
             ((and (class _n) (= (length (_n . bv)) 1)) ;; big1
              (write-long (elt (_n . bv) 0) s)
              (write-long (if (>= _n 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _n s)(write-long (if (>= _n 0) 0 #xffffffff) s)))
     ;; string _s
       (write-long (length _s) s) (princ _s s)
     ;; float64[] _a
     (write-long (length _a) s)
     (dotimes (i (length _a))
       (sys::poke (elt _a i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _n
#+(or :alpha :irix6 :x86_64)
      (setf _n (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _n (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _s
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _s (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _a i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get nick_package::nick_msg :md5sum-) "b032e12b06e68c838c7198038d244ba6")
(setf (get nick_package::nick_msg :datatype-) "nick_package/nick_msg")
(setf (get nick_package::nick_msg :definition-)
      "int64 n
string s
float64[] a

")



(provide :nick_package/nick_msg "b032e12b06e68c838c7198038d244ba6")


