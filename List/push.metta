 ;Function to push a list element given an index
(: push (-> Number $element List List))
(= (push $a $element Nil) (Cons $element Nil))

(= (push $a $element (Cons $x $xs))
    (if (== $a 0)
         ; (Cons $element (- $a 1) $xs)
        (Cons $element(Cons $x Cons $xs))
        (Cons $x (push (- $a 1) $element $xs))
        )
    )

 ;;test cases
! (push 4 Z (Cons A (Cons B (Cons C(Cons D(Cons E Nil))))))
!(push 0 Z Nil)