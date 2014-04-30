
;;;; cheese.scm ---  library for display img



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



;;; Keywords: mouse cam camera display image



;;; Usage:


;;; History:


;;; Code:


;(require racket/draw)
(require graphics/graphics)

(define w null)

(define (display-large-img pixel-size img)
  ;; img = '('(f i r s t t r o w) '(s e c o n d r o w) ... '(l a s t t t r o w))
  ;; pixel size = sise of displayed square-pixel; for example 4

  (define (display-column column counter-c)
    (when (not (null? column))
      (begin (display-row (car column) 0 counter-c)
	     (display-column (cdr column) (+ counter-c 1)))))
  
  (define (display-row row counter-r counter-c)
    (when (not (null? row))
      ;; draw rectangle
      (let ((pixel-color (/ (car row) 256.0))) ;; 1 byte = 256;    color from 0.0 to 1.0
	((draw-solid-rectangle w)
	 (make-posn (* pixel-size counter-r) (* pixel-size counter-c))
	 pixel-size
	 pixel-size
	 (make-rgb pixel-color pixel-color pixel-color))
	
	
	(display-row (cdr row) (+ counter-r 1) counter-c))))
  
  (display-column img 0))
;; unit-test:
;; (display-large-img 16 (list (list 10 20 30 100) (list 100 140 150 250) (list 10 20 30 100) (list 10 0 30 100)))  




(define (split-img-to-pixel img img-size)
  ;; in-img = "123456789" (one pixel = one byte)
  ;; img-size = 3
  ;; out-img = ((1 2 3) (4 5 6) (7 8 9))
  
  ;;(bytes->list img))
  ((string->list img)))
;; unit-test: fixme: not ready
;;(display (split-img-to-pixel "123456789" 3))(newline)


(define (simple-display-large-img pixel-size img-size img)
  (define (simage lst-img row col)
    (when (> (length lst-img) 0)
      (begin
	;; draw rectangle
	(let ((pixel-color (/ (car lst-img) 256.0))) ;; 1 byte = 256;    color from 0.0 to 1.0
	  ((draw-solid-rectangle w) ;; draw
	   (make-posn (* pixel-size col) (* pixel-size row))
	   pixel-size
	   pixel-size
	   (make-rgb pixel-color pixel-color pixel-color)))

	;(display (car lst-img)) (display " ") (when (>= (+ row 1) img-size) (newline))

	(simage (cdr lst-img)
		(if (>= (+ row 1) img-size) 0 (+ row 1))
		(if (>= (+ row 1) img-size) (+ col 1) col)))))


  ;(simage img 0 0))
  
  ;((clear-viewport w)) ;; clear
  (simage (bytes->list img) 0 0))
;unit test:
;(simple-display-large-img 16 4 (list     10 20 30 100     100 140 150 250     10 20 30 100     10 0 30 100))


