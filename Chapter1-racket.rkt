#lang racket

;;; Excercise 1.1
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
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

;;; Excercise 1.2
(/ (+ 5 (/ 1 2) (- 3 (+ 6 (/ 1 5))))
   (* 3 (- 6 2) (- 2 7)))

;;; Excercise 1.3
;;; It would be better to implement a sort function,
;;; but totally unnecessary for this problem.
(define two-largest
      (lambda (x y z)
        (cond ((and (<= x y) (<= x z)) (list y z))
              ((and (<= y x) (<= y z)) (list x z))
              ((and (<= z x) (<= z y)) (list x y)))))

(define (sum-two-largest a b c)
  (apply + (map (lambda (n) (expt n 2))
                (two-largest a b c))))
