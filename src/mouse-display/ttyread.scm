#!/usr/bin/env racket
#lang racket

(require readline)
(require readline/rep-start)

;; for config tty
(require racket/system)

(define *device-path* "/dev/ttyUSB0")
(define *device-speed* "115200")



(define tty null)

(define (serial-initialize device-path device-speed)
  "configures the serial port to run at the given speed"
  
  (display (string? device-path))(newline)
  (display (string? device-speed))(newline)
  (set! tty (open-input-file device-path #:mode `binary))
  (sleep 3)
  (if (system (string-join (list "stty" "-F" device-path device-speed "raw" "-parenb" "-parodd" "cs8" "-hupcl" "-cstopb" "clocal" "min" "0" "inpck")
			   " "))
      (begin (display "port opened")(newline))
      (error "Could not connect to " device-path)))



(define (serial-close-connection)
  ;; additional cleanup here!
  (printf "fixme")
)

(define (read-loop)
  ;(display (bytes->string/utf-8 (read-byte tty)))
  ;;(display (read-char tty))
  (let ((qq (read-line tty)))
    (display "len=")(display (string-length qq))(newline)
    (display qq)(newline))
  (read-loop))



(serial-initialize *device-path* *device-speed*)
(read-loop)
(serial-close-connection)


