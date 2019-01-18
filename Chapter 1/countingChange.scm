#lang scheme
(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                 (cc (- amount
                        (first-denomination kinds-of-coins))
                     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(count-change 10)
(count-change 100)
(count-change 6)
(count-change 292) ; this takes much longer

; Whenever a negative amount or 0 kinds of coins, cancel out
; left side of each pair result of removing the currency, right side is subtract the amount of one coin but keep the currency
; (count-change 6) - amount
; (cc 6 5) - amount, kinds-of-coins

; (cc 6 (5 - 1))                ;; (cc (6 - 50) 5)
; (cc 6 4)                      ;; ~(cc -44 5)~ <=== can't use 50 cent coins

; (cc 6 (4 - 1))                ;; (cc (6 - 25) 4)
; (cc 6 3)                      ;; ~(cc -19 4)~ <=== can't use quarters

; (cc 6 (3-1))                  ;; (cc (6 - 10) 3)
; (cc 6 2)                      ;; ~(cc -4 3)~ <=== can't use dimes

; (cc 6 (2 - 1)                 ;; (cc (6 - 5) 2)
; (cc 6 1)                      ;; (cc 1 2) <== can use a nickle, see the reduction

; 6 cents remain, nothing spent ;; 1 cent remains, penny spent

; (cc 6 (1 - 1)) ; (cc (6 - 1) 1)         ;; (cc 1 (2 - 1)) ; (cc (1 - 5) 2)
; ~(cc 6 0)~     ; (cc 5 1)               ;; (cc 1 1)       ; ~(cc -4 2)
; (cc 5 1)                                ;; (cc 1 1)

; (cc 5 (1 - 1)) ; (cc (5 - 1) 1)         ;; (cc 1 (1-1))   ; (cc (1-1) 1)
; ~(cc 5 0)~     ; (cc 4 1)               ;; ~(cc 1 0)~     ; (cc 0 1) <=== 1
; (cc 4 1)

; (cc 4 (1-1))   ; (cc (4-1) 1)
; ~(cc 4 0)~     ; (cc 3 1)

; (cc 3 (1-1))   ; (cc (3-1) 1)
; ~(cc 3 0)~     : (cc 2 1)

; (cc 2 (1-1))   ; (cc (2-1) 1)
; ~(cc 2 0)~     ; (cc 1 1)

; (cc 1 (1-1))   ; (cc (1-1) 1)
; ~(cc 1 0)~     ; (cc 0 1) <=== 1

; 1 + 1 = 2