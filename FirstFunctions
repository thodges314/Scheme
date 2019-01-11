#lang scheme
(define (square x) (* x x))
(square 21)
(square (+ 2 5))
(square (square 3))

(define (sum-of-squares x y) (+ (square x) (square y)))
(sum-of-squares 3 4)

( define (f a) (sum-of-squares (+ a 1) (* a 2)))
(f 5)

;(define (abs x)
;  (cond ((> x 0) x)
;        ((= x 0) 0)
;        ((< x 0) (- x))
;        )
;  )

;(define (abs x)
;  (cond ((< 0) (- x))
;        (else x)
;        )
;  )

(define (abs x)
  (if (< x 0) (- x) x)
  )

(abs 5)
(abs (- 4))
(abs 0)
