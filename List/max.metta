(: List type)
(: Nil List)
(: Cons (-> Number List List))

 ;this function can accept both the list and the accumulator recursively.
(: maxValue (-> Number List Number))
(= (maxValue $max Nil) $max)

(= (maxValue $max (Cons $x $xs))
    (if (> $max $x)
        (maxValue $max $xs)
        (maxValue $x $xs)
        )
    )

 ; Function to find the maximum value in a list
(: max (-> List Number))
(= (max Nil)Empty-list)
(= (max (Cons $x $xs))
    (maxValue $x $xs)
    )

 ; Test cases
!(max Nil)
!(max (Cons 1 (Cons 2 (Cons 3 Nil))))
!(max (Cons 4 (Cons 2 (Cons 1 Nil))))
!(max (Cons 2 (Cons 5 (Cons 3 (Cons 4 Nil)))))