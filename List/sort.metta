(: List type)
(: Nil List)
(: Cons (-> $x List List))
(: quickSort (-> List List))

(= (quickSort Nil) Nil)
(= (quickSort (Cons $x $xs))
    (let ($left $right) (partition $x $xs)
        (append (quickSort $left) (Cons $x (quickSort $right)))
        )
    )

 ; A function to append two lists
(: append (-> List List List))
(= (append Nil $ys) $ys)
(= (append (Cons $x $xs) $ys) (Cons $x (append $xs $ys)))

 ; Function to partition the list
(: partition (-> Atom List ( List List )))
(= (partition $_ Nil) ( Nil Nil ))
(= (partition $pivot (Cons $x $xs))
    (let ($left $right) (partition $pivot $xs)
        (let* ( ($cond (<= $x $pivot)) )
            (if $cond
                ((Cons $x $left) $right)
                ($left (Cons $x $right))
                )
            )
        )
    )

 ;;test cases
!(quickSort (Cons 4 (Cons 2 (Cons 3 Nil))))
!(quickSort (Cons 1 (Cons 6 (Cons 3 (Cons 2 (Cons 4 Nil))))))