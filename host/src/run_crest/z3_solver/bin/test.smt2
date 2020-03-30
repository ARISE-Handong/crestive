(declare-sort U 0)
(declare-fun f (U) U)
(declare-const a U)

(assert (not (= (f (f a)) a) ) )
(assert (= (f a) a) )

(check-sat)

