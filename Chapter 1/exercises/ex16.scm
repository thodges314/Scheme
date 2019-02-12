#lang scheme
;; iterative version of fast-expt
;; also in exponentiation2.scm

(define (square x) (* x x))

(define (even? n)
    (= (remainder n 2) 0))

(define (fast-expt-i b n)
  (define (expt-iter b n a)
    (cond ((= n 0) a)
          ((even? n) (expt-iter (square b) (/ n 2) a))
          (else (expt-iter b (- n 1) (* a b)))))
  (expt-iter b n 1))

(fast-expt-i 2 1000000)