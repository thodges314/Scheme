#lang scheme
;; exercise 1.11 : tree function to compute f(x) = {x if x < 3} {f(x-1) + 2f(x-2) + 3f(x-3) if x >= 3}
; recursive
(define (oneEleven x)
  (if (< x 3)
      x
      (+ (oneEleven (- x 1)) (* 2 (oneEleven (- x 2))) (* 3 (oneEleven (- x 3))))))
1
(oneEleven 1)
2
(oneEleven 2)
3
(oneEleven 3)
4
(oneEleven 4)
5
(oneEleven 5)
6
(oneEleven 6)
7
(oneEleven 7)
8
(oneEleven 8)
9
(oneEleven 9)
10
(oneEleven 10)
20
(oneEleven 20)
;30
;(oneEleven 30) ; anything else takes too long

        


; iterative
(define (oneElevenIterative x)
  (define (iterator a b c count)
    (if (< count 3)
     a
     (iterator (value a b c) a b (- count 1))))
  (define (value a b c)
    (+ a (* 2 b) (* 3 c)))
  (if (< x 3)
    x
    (iterator 2 1 0 x)
  ))

1
(oneElevenIterative 1)
2
(oneElevenIterative 2)
3
(oneElevenIterative 3)
4
(oneElevenIterative 4)
5
(oneElevenIterative 5)
6
(oneElevenIterative 6)
7
(oneElevenIterative 7)
8
(oneElevenIterative 8)
9
(oneElevenIterative 9)
10
(oneElevenIterative 10)
20
(oneElevenIterative 20)
30
(oneElevenIterative 30)
100
(oneElevenIterative 100)