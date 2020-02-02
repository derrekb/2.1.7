#lang racket
(require fsm)


; fsm fsm [natnum] --> true or (listof words)
(define (sm-testequiv?  M1 M2 . l)
  (define number-tests (if (null? l) NUM-TESTS (car l)))
  (let* ((test-m1 (generate-words number-tests (sm-getalphabet M1) null))
         (test-m2 (generate-words number-tests (sm-getalphabet M2) null))
         (test-words (append test-m1 test-m2))
         (res-m1 (map (lambda (w) (list w (sm-apply M1 w))) test-words))
         (res-m2 (map (lambda (w) (list w (sm-apply M2 w))) test-words)))
    (cond [(equal? res-m1 res-m2) #t]
          [else (get-differences res-m1 res-m2 test-words)])))