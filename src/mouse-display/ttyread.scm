#lang racket



;;;; ttyread.scm ---  library for read img from microcontroller



;;; Copyright (C) 2014 Roman V. Prikhodchenko



;;; Author: Roman V. Prikhodchenko <chujoii@gmail.com>



;;;    This file is part of mousecam.
;;;
;;;    mousecam is free software: you can redistribute it and/or modify
;;;    it under the terms of the GNU General Public License as published by
;;;    the Free Software Foundation, either version 3 of the License, or
;;;    (at your option) any later version.
;;;
;;;    mousecam is distributed in the hope that it will be useful,
;;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;    GNU General Public License for more details.
;;;
;;;    You should have received a copy of the GNU General Public License
;;;    along with mousecam.  If not, see <http://www.gnu.org/licenses/>.



;;; Keywords: tty usb microcontroller mouse cam image img



;;; Usage:

;;; History:

;;; Code:

(require readline)
(require readline/rep-start)

;; for config tty
(require racket/system)

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
  (printf "fixme"))




;(serial-initialize *device-path* *device-speed*)
;(read-loop)
;(serial-close-connection)







