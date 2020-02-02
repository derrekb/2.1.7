#lang eopl
(require fsm)

(define m (make-ndfa
              '(Q-0 Q-1 Q-2 Q-3 Q-4 Q-5)
              '(a b)
              'Q-0
              '(Q-0)
              `((Q-0 a Q-1)
                (Q-1 b Q-2)
                (Q-2 a Q-3)
                (Q-3 ,EMP Q-0)
                (Q-0 a Q-4)
                (Q-4 b Q-5)
                (Q-5 ,EMP Q-0))))