#lang racket
(provide Inf/DATA)

; TODO: Add file saving/reading

(define Inf/DATA
  (vector
   "" ; Input
   "" ; Name
   0  ; Routine
   #f  ; Completed Game?
   #f  ; Save Loaded?
   #t  ; Continue Loop?
   ))