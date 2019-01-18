#lang scheme

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(sine 12.15)    ;= -0.39980345741334
(sine 3.14159)  ;= -0.000785519012433511

; not so accurate but ok - a bit better if we limit to under 0.01 radians

;for 12.15 - work out how many times to divide this by 3 to get < 0.1
;
;12.15 * (1/3) ^ n = 0.1
;
;(1/3) ^ n = (0.1 / 12.15)
;
;n = ln(0.1/12.15) / ln(1/3) = 4.3691...
;so 5 iterations
;
; in general this is Theta(log(1/a))