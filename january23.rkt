#lang racket
;q's are the states and need to be uppercase, inputs are lowercase
(require fsm)
(define EVEN-NUM-B
  (make-dfa '(Q0 Q1);dfa is the machine type
            '(a b);list representing inputs
            'Q0
            '(Q0)
            '((Q0 a Q0)
              (Q0 b Q1)
              (Q1 a Q1)
              (Q1 b Q0))))

(define RES1 (sm-apply EVEN-NUM-B '(a b b a a b a a a b a a )))

;;to put in terminal: (sm-apply EVEN-NUM-B '(a b b a a b a a a b a a ))
;;(sm-showtransitions  EVEN-NUM-B '(a b b a a b a a a b a a ))