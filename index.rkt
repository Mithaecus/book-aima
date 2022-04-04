#lang scribble/manual

@title{Artificial Intelligence - A Modern Approach}

@section{Solving Problems by Searching}

Psudocode for a simple problem-solving agent. First it formulates a goal and a problem, searches for a sequence of actions that would solve the problem, and then executes the actions one at a time. When this is complete, it formulates another goal and starts over.

@codeblock|{
(define seq     '())
(define state   '())
(define goal    '())
(define problem '())

(define (simple-problem-solving-agent percept)
  (begin
    (set! state (update-state state percept))
    (if (empty? seq)
        (begin
          (set! goal (formulate-goal state))
          (set! problem (formulate-problem state goal))
          (set! seq (search problem)))
        (void))
    (set! seq (cdr seq))
    (car seq)))
}|