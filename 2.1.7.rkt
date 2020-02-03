#lang Racket
(require fsm)


(define M1 (make-dfa
              '(Q-0 Q-1 Q-2 Q-3 Q-4)
              '(a b)
              'Q-0
              '(Q-0)
              `((Q-0 a Q-1)
                (Q-1 a Q-1)
                (Q-1 b Q-2)
                (Q-2 a Q-0)
                (Q-3 a Q-4)
                (Q-4 b Q-2))))

(define M2 (make-dfa
              '(Q-0 Q-1 Q-2)
              '(a b)
              'Q-0
              '(Q-0)
              `((Q-0 a Q-1)
                (Q-1 a Q-1)
                (Q-1 b Q-2)
                (Q-2 a Q-0))))







