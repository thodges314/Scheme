#lang scheme

;; math functions
(define (average x y)
  (/ (+ x y) 2)
  )

(define (abs x)
  (if (< x 0) (- x) x)
  )

(define (square x) (* x x))

(define (cube x) (* x x x))

;; sqrt
(define (sqrt x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (itrtr guess x)
    (if (good-enough? guess x)
      guess
      (itrtr (improve guess x) x )))
  (itrtr 1.0 x))

;; cubert
(define (cubert x)
  (define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))
  (define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (itrtr guess x)
    (if (good-enough? guess x)
      guess
      (itrtr (improve guess x) x )))
  (itrtr 1.0 x))

;;test
9
(sqrt 9)
(cubert 9)
8
(sqrt 8)
(cubert 8)

;; lexical scoping
;; sqrt
(define (sqrt-lex x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (itrtr guess)
    (if (good-enough? guess)
      guess
      (itrtr (improve guess))))
  (itrtr 1.0))

;; cubert
(define (cubert-lex x)
  (define (good-enough? guess)
    (< (abs (- (cube guess) x)) 0.001))
  (define (improve guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (itrtr guess)
    (if (good-enough? guess)
      guess
      (itrtr (improve guess))))
  (itrtr 1.0))

;;test
9
(sqrt-lex 9)
(cubert-lex 9)
8
(sqrt-lex 8)
(cubert-lex 8)