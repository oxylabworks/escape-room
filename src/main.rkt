#lang racket
(require
  "defns.rkt"
  "loop.rkt")

(define Inf/DATA #(
  #f ; MainMenu: Completed game?
  #f ; MainMenu: Has readable save?
  #f ; NewGame: Given an input?
  0  ; NewGame: Name Length
  "" ; GLOBAL: Name
  0  ; GLOBAL: Routine
  "" ; GLOBAL: Last Input
))

(define Inf/CLEAR "\033[H\033[2J")
(define Inf/INPUT "")
(define Inf/LOOP #t)
(define Inf/NAME (vector-ref Inf/DATA 4))
(define Inf/PROMPT "~$")

(while Inf/LOOP
       (case (vector-ref Inf/DATA 5)
         [(0) (MainMenu Inf/DATA)]
         [(1) (NewGame-1 Inf/DATA)])
       (set! Inf/PROMPT (string-append Inf/NAME " ~$"))
       (printf "~a " Inf/PROMPT) 
       (set! Inf/INPUT (read-line)))