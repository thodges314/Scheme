#lang scheme
; tree process - super inefficient
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

;(fib 0)
;(fib 1)
;(fib 2)
;(fib 3)
;(fib 4)
;(fib 5)
;(fib 6)
;(fib 7)
;(fib 8)
;(fib 9)
;(fib 10)
;(fib 11)

; iterative process - super efficient
(define (fib-notree n)
  (define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))
  (fib-iter 1 0 n)
  )

;(fib-notree 1)
;(fib-notree 2)
;(fib-notree 3)
;(fib-notree 4)
;(fib-notree 5)
;(fib-notree 6)
;(fib-notree 7)
;(fib-notree 8)
;(fib-notree 9)
;(fib-notree 10)
;(fib-notree 11)

(fib-notree 100)