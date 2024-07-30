 ;Function to pop a list element given an index
(: pop (-> Number List List))
(= (pop $a Nil) Nil)

(= (pop $a (Cons $x $xs))
    (if (== $a 0)
        (pop (- $a 1) $xs)
        (Cons $x (pop (- $a 1) $xs))
        )
    )

 ;;test cases

! (pop 2 (Cons A (Cons B (Cons C(Cons D(Cons E Nil))))))