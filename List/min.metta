(: List type)
(: Nil List)
(: Cons (-> Number List List))

 ;this function can accept both the list and the accumulator recursively.
(: minValue (-> Number List Number))
(= (minValue $min Nil) $min)

(= (minValue $min (Cons $x $xs))
    (if (< $min $x)
        (minValue $min $xs)
        (minValue $x $xs)
    )
)

 ; Function to find the minimum value in a list (Abstract function: accepts only the list and passes the first elemnt as an accumulator to the minValue function. )
(: min (-> List Number))
(= (min Nil)Empty-list)

(= (min (Cons $x $xs))
    (minValue $x $xs)
)

 ; Test cases
! (min Nil)
! (min (Cons 1 (Cons 2 (Cons 3 Nil))))
! (min (Cons 4 (Cons 2 (Cons 1 Nil))))
! (min (Cons 2 (Cons 5 (Cons 3 (Cons 4 Nil)))))