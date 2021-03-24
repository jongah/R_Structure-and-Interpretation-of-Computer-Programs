#lang racket

;Exercise 1.1

(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4)(- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a)(< b(* a b)))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

;Exercise1.2
(/ (+ 5 4 (- 2 (- 3 (+ 5 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;Exercise1.3
(define (ex_1.3_sq a1 a2)(+ (* a1 a1) (* a2 a2)))
(define (>= x y)(not(< x y)))
;(define (ex_1.3 x1 x2 x3)(cond ((and (>= x1 x2)(>= x2 x3)) (ex_1.3_sq x1 x2))
;                               ((and (>= x2 x3)(>= x3 x1)) (ex_1.3_sq x2 x3))
;                               (else (ex_1.3_sq x3 x1))))
(define (ex_1.3 x1 x2 x3)(if (>= x1 x2)
                             (if (>= x2 x3)
                                 (ex_1.3_sq x1 x2)
                                 (ex_1.3_sq x1 x3))
                             (ex_1.3_sq x2 x3)))
(ex_1.3 3 1 3) ; 18
(ex_1.3 4 5 4) ; 41
(ex_1.3 2 2 1) ; 8
