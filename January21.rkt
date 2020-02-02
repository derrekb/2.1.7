#lang racket
(require fsm)

(define ENDS-WITH-A
  (concat-regexp
   (kleenestar-regexp
    (union-regexp
     (singleton-regexp "a")
     (singleton-regexp "b")))
   (singleton-regexp "a")))

; (printable-regexp ENDS-WITH-A)

(define ZERO (singleton-regexp "0"))
(define ONE (singleton-regexp "1"))
(define OU1* (kleenestar-regexp (union-regexp ZERO ONE)))



(define ZERO (singleton-regexp "0"))
(define ONE (singleton-regexp "1"))
(define 0U1* (kleenestar-regexp (union-regexp ZERO ONE)))
                 
