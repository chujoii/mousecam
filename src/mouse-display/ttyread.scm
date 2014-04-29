
(define *device-path* "/dev/ttyUSB0")
(define *device-speed* 115200)


(defun serial-initialize (device-path device-speed)
  "configures the serial port to run at the given speed"
  (if (null (probe-file device-path))
      (print "device does not exist")
      (run-program
       "/bin/stty" (list "-F" device-path (princ-to-string device-speed) "raw" "-parenb" "-parodd" "cs8" "-hupcl" "-cstopb" "clocal" "min" "0" "inpck"))))


;(initialize 9600)
