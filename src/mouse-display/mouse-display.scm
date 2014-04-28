#!/usr/bin/env racket
#lang racket



(require racket/gui/base
         2htdp/image
         (only-in mrlib/image-core render-image))

;; The state of our program is a number.
(define state 0)

;; On a timer tick, increment the state, and refresh the canvas.
;; tick!: -> void
(define (tick!)
  (set! state (add1 state))
  (send THE-CANVAS refresh))


;; When a canvas paints itself, use the following:
;; paint: canvas% dc<%> -> void
(define (paint! a-canvas my-drawing-context)
  (define my-new-scene (text (format "I see: ~a" state) 20 'black))
  ;; Note: we force the canvas to be of a particular width and height here:
  (send a-canvas min-client-width (image-width my-new-scene))
  (send a-canvas min-client-height (image-height my-new-scene))
  (render-image my-new-scene my-drawing-context 0 0))


;; Here, we initialize our graphical application.  We create a window frame...
;; THE-FRAME: frame%
(define THE-FRAME (new (class frame%
                         (super-new)
                         ;; When we close the frame, shut down everything.
                         (define/augment (on-close)
                           (custodian-shutdown-all (current-custodian))))
                       [label "Example"]))


;; and add a canvas into it.
;; THE-CANVAS: canvas%
(define THE-CANVAS (new (class canvas%
                          (super-new)

                          ;; We define a key handler.  Let's have it so it
                          ;; resets the counter on a key press
                          (define/override (on-char key-event)
                            (when (eq? (send key-event get-key-code) 'release)
                              (set! state 0)
                              (send THE-CANVAS refresh))))
                        [parent THE-FRAME]
                        [paint-callback paint!]))

;; We get the frame to show on screen:
(send THE-FRAME show #t)

;; Finally, we set up a timer that will call tick! on every second.
(define THE-TIMER (new timer% 
                       [notify-callback tick!]
                       [interval 1000]))
