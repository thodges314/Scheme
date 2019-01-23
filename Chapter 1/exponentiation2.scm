#lang scheme

;; recursive exponentiation
; crashes on 2 ^ 8,000,000 - 2 ^ 800,000 takes 1 minute 45 seconds
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

;(expt 2 800000)

;; iterative exponentiation
; tested for 2^8,000,000 - after 10 minutes killed the process - 2^800,000 takes 55 seconds

(define (expt-i b n)
  (define (expt-iter b counter product)
    (if (= counter 0)
        product
        (expt-iter b (- counter 1) (* b product))))
  (expt-iter b n 1))

;(expt-i 2 800000)

; these are both too fast even with large numbers to detect time lags ^^^^

;; fast-expt
;; uses b^n = (b^(n/2))^2 is n is even, b^n = b * b^(n-1) if n is odd
; finds 2^8,000,000 in about 4 seconds - finds 2^800,000 in less than 1 second
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (square x) (* x x))
(define (even? n)
    (= (remainder n 2) 0))

;(fast-expt 2 800000)

;; fast-expt-i
;;
; takes about the same abount of time as fast-expt but with constant storage requirements

(define (fast-expt-i b n)
  (define (expt-iter b n a)
    (cond ((= n 0) a)
          ((even? n) (expt-iter (square b) (/ n 2) a))
          (else (expt-iter b (- n 1) (* a b)))))
  (expt-iter b n 1))

(fast-expt-i 2 8000000)