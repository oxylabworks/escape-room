#lang racket
;(require racket/undefined)
(provide MainMenu Credits NewGame-1)


(define (MainMenu -v)
  (printf "Escape Room (2024 Edition) by oxyTab~%~%")
  (if (vector-ref -v 0)
      (printf "[1] New Game+~%")
      (printf "[1] New Game~%"))
  (if (vector-ref -v 1)
      (printf "[2] Continue Game~%")
      (printf "[-] No Save Found!~%"))
  (printf "[3] Credits & More~%")
  (printf "[4] Exit Game~%")
  0)

(define (Credits -v)
  (printf ""))

(define (NewGame-1 -v)
  (cond
      [(vector-ref -v 2)
       (cond
         [(> (vector-ref -v 3) 16)
          (printf "That's a ridiculously long name! I can't work with that. Choose a different name.~%")
          1]
         [(< (vector-ref -v 3) 2)
          (printf "That name is way too short! Try something different.")
          1]
         [else
          (cond
            [(string=? (vector-ref -v 4) "hercules balls")
             (printf "Is this the right group?!?!?!?! This can't be the right group!!!~%")]
            [(string=? (vector-ref -v 4) "oxyTab")
             (printf "Impersonation is not a victimless crime.~%")]
            [(string=? (vector-ref -v 4) "Prodski")
             (printf "You aren't gonna get a secret ending for this or anything.~%")]
            [(string=? (vector-ref -v 4) "Hakita")
             (printf "You won the Size 2 Fish award!~%")]
            [(string=? (vector-ref -v 4) "Ellie")
             (printf "you're going to make some third world slum lord very happy~%")]
            [else
             (printf "This is the story of ~a, a story of mystery, danger, and curiosity.~%" (vector-ref -v 4))])
          3])]
      [else
       (printf "I would like to tell you a story. In this story, you are the protagonist.~%")
       (printf "As the protagonist, it's important to have a witty and catchy name.~%")
       (printf "What is your name, protagonist?~%")
       1]))