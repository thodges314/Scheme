#lang scheme
; exponentiation - linear recursive

(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

(expt 2 8)
(expt 2 16)

; exponentiation - linear iteration

(define (ext b n)
  (exp-iter b n 1))
(define (exp-iter b counter product)
  (if (= counter 0)
      product
      (exp-iter b
                (- counter 1)
                (* b product))))
(ext 2 8)
(ext 2 16)