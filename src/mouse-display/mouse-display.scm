#lang racket/load

;;;; mousedisplay.scm ---  program for display image from optical mouse sensor (camera) 


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



;;; Keywords: mouse camera cam



;;; Usage:

;; ./mousedisplay.scm

;;; History:

;;; Code:



;(require racket/draw)
(require graphics/graphics)

(require readline)
(require readline/rep-start)

;; for config tty
(require racket/system)


(define *device-path* "/dev/ttyUSB0")
(define *device-speed* "115200")



(define tty null)
(define w null)



(load "cheese.scm")
(load "ttyread.scm")





(define (read-loop counter)
  ;(display "counter=")(display counter)(newline)

  ;(display (bytes->string/utf-8 (read-byte tty)))
  ;;(display (read-char tty))
  ;;(let ((qq (read-line tty)))
  (let ((qq (read-line tty)))
    (display qq)(newline)
    (when (and (> (string-length qq) 5) (string=? (substring qq 0 5) "FRAME"))
      (simple-display-large-img 16 16 (read-bytes 256 tty) ))
    
    ;(display "len=")(display (string-length qq))(newline)(display qq)(newline)
    )

  ;(sleep 0.1)
  (when (< counter 100000)
    (read-loop (+ counter 1))))






(serial-initialize *device-path* *device-speed*)


(open-graphics)
; nothing appears to happen, but the library is initialized...
 
(set! w (open-viewport "mousecam" 300 300))
; viewport window appears
 


(read-loop 0)




;(sleep 10)
 
(close-viewport w)
; viewport disappears
 
(close-graphics)
; again, nothing appears to happen, but
; unclosed viewports (if any) would disappear



(serial-close-connection)
