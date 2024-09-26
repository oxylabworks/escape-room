#lang racket
(require
  "data.rkt"
  "loop.rkt"
  "routines.rkt")

(define Inf/CLEAR "\033[H\033[2J")
(define Inf/INPUT "")
(define Inf/LOOP #t)
(define Inf/NAME "user")
(define Inf/PROMPT "~$")
(define Inf/ROUTINE 0)

(define (get-input)
  (set! Inf/PROMPT (string-append Inf/NAME " ~$"))
  (display (string-append Inf/PROMPT " "))
  (set! Inf/INPUT (read-line))
  (vector-set! Inf/DATA 0 Inf/INPUT))

(while Inf/LOOP
  (printf "~%~a~%" Inf/CLEAR)

  (case Inf/ROUTINE
    [(0) (set! Inf/ROUTINE (Menu-1))]
    [(3) (set! Inf/ROUTINE (Credits-1))])

  (if (= (vector-ref Inf/DATA 2) Inf/ROUTINE)
    (get-input)
    (vector-set! Inf/DATA 2 Inf/ROUTINE)))