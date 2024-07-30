(: List type)
(: Nil List)
(: Cons (-> $a List List))

; Function to find the length of a list
(: length (-> List Number))
(= (length Nil) 0)
(= (length (Cons $x $xs))
    (+ 1 (length $xs))
)

;;test cases
! (length (Cons A Nil))
! (length (Cons A (Cons B (Cons C (Cons D Nil)))))