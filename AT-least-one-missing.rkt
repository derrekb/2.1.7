#lang Racket
(require fsm)


;; design a machine where the word is missing at least one letter from the alpha {a,b,c}

;; -- Invariants --

;; the consumed input is missing a, b, and c
(define A-INV null?)

;; consumed input is at least missing b
(define (B-INV input)
  (andmap (lambda (l) (not (eq? l 'b))) input))

;; consumed unput is at least missing a
(define (C-INV input)
  (andmap (lambda (l) (not (eq? l 'a))) input))

;; consumed unput is at least missing c
(define (D-INV input)
  (andmap (lambda (l) (not (eq? l 'c))) input))


(define transitionRelation `((A ,EMP B)
                             (A ,EMP C)
                             (A ,EMP D)
                             (B a B)
                             (B c B)
                             (C b C)
                             (C c C)
                             (D a D)
                             (D b D)))

(define AT-LEAST-ONE-MISSING (make-ndfa
                              '(A B C D)
                              '(a b c)
                              'A
                              '(B C D)
                              transitionRelation))

(sm-visualize AT-LEAST-ONE-MISSING
              (list 'A A-INV)
              (list 'B B-INV)
              (list 'C C-INV)
              (list 'D D-INV))