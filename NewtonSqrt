#lang scheme

;; newtons method iteration
; base function
(define (sqrt-itr guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-itr (improve guess x) x )
      )
  )

; imporve function
(define (improve guess x)
  (average guess (/ x guess))
  )

(define (average x y)
  (/ (+ x y) 2)
  )

; good enough function - version 1 better for large numbers, version 2 better for small numbers
(define (good-enough? guess x)
;  (< (abs (- (square guess) x)) 0.001))
  (< (abs (/ (- (improve guess x) guess) x)) 0.001))

; math functions
(define (abs x)
  (if (< x 0) (- x) x)
  )
(define (square x) (* x x))

; try new-if - crashes machine from memory - procedures are applicative-order so procedures are evaluated first
;(define (new-if predicate then-clause else-clause)
;  (cond (predicate then-clause)
;        (else else-clause)
;        )
;  )

; useful function
(define (sqrt x)
  (sqrt-itr 1.0 x)
  )

9
(sqrt 9)

(sqrt 0.00000009)
(sqrt 900000000)

(+ 100 37)
(sqrt (+ 100 37))

(sqrt (+ (sqrt 2) (sqrt 3)))

(square (sqrt 1000))


;;;;;; cube roots ;;;;;;;
; base function
(define (cube-itr guess x)
  (if (good-enough-cube? guess x)
      guess
      (cube-itr (improve-cubed guess x) x )
      )
  )

; improve cubed
(define (improve-cubed guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3)
  )

; cube
(define (cube x)
  (* x (* x x))
  )

; good-enough-cube
(define (good-enough-cube? guess x)
  (< (abs (- (cube guess) x)) 0.001))
;  (< (abs (/ (- (improve-cubed guess x) guess) x)) 0.001))

; useful function
(define (cubert x)
  (cube-itr 1.0 x)
  )


(cubert 8)
(cubert 256)