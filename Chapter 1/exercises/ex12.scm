#lang scheme

(define (pascal row col)
  (cond ((< row col) 0)
        ((or (= 0 col) (= row col)) 1)
        (else (pascal-iterate row col))))
(define (pascal-iterate row col)
  (+ (pascal (- row 1) (- col 1))
     (pascal (- row 1) col)))


(pascal 0 0)
(pascal 5 1)
(pascal 6 2)
(pascal 20 7)
(pascal 30 17)