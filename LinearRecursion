#lang scheme

;; Factorial demonstrations of Recursion in Scheme
; linear recurive process, chain of deferred multiplications (and information to keep track of them) grows linearly with n
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

(factorial 60)

; linear iterative process, number os steps grown with n, but not the number of state variables or deferred multiplications
(define (factorial-iter n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product) (+ counter 1))))
  (iter 1 1))

(factorial-iter 60)
