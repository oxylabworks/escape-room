#lang racket
(require "data.rkt")
(provide Menu-1 Credits-1)

(define (Menu-1) ;0
  (cond
    [(string=? (vector-ref Inf/DATA 0) "1") 1]
    [(and (string=? (vector-ref Inf/DATA 0) "2") (vector-ref Inf/DATA 4)) 2]
    [(string=? (vector-ref Inf/DATA 0) "3") 3]
    [(string=? (vector-ref Inf/DATA 0) "4") #f]
    [else
     (printf "Escape Room (2024 Edition) by OXYLAB~%~%")
     (if (vector-ref Inf/DATA 3)
         (printf "[1] New Game+~%")
         (printf "[1] New Game~%"))
     (if (vector-ref Inf/DATA 4)
         (printf "[2] Continue Game~%")
         (printf "[-] No Save found!~%"))
     (printf "[3] Credits & More~%")
     (printf "[4] Exit Game~%") 0]))

(define (Credits-1) ;3
  (cond
    [(string=? (vector-ref Inf/DATA 0) "I wish to restart from the beginning.") 6]
    [(string=? (vector-ref Inf/DATA 0) "exit") 0]
    [else
     (printf "-- CREDITS & HOW TO PLAY --~%~%")
  
     (printf "Escape Room (2024 Edition) is a collaborative effort between various contributors.~%")
     (printf "Thanks to those who helped.~%~%")
  
     (printf "This program was developed by OXYLAB, a development and production studio from oxyTab et al.~%")
     (printf "The source code of this program is licensed by the Mozilla Public License 2.0.~%")
     (printf "The program in full, including source code and all published binaries, are property of OXYLAB and its contributors.~%~%")
  
     (printf "Special Thanks:~%")
     (printf "   - Prodski~%   - Ellie_Bee~%   - Racket Community~%~%")

     (printf "The Escape Room project is based on Prodski's 2017 text-adventure game by the same name.~%")
     (printf "In the interest of reviving personal history, oxyTab and Prodski have agreed to collaborate on a~%")
     (printf "remake of the original text-adventure game. The majority of this project is lead by oxyTab.~%~%")
  
     (printf "To completely reset your saved data (including for New Game+), type 'I wish to restart from the beginning'.~%")
     (printf "Type 'exit' to return to the main menu.~%") 3]))