(: List type)
(: Nil List)
(: Cons (-> $x List List))

 ; Function to reverse a list
(: reverseList (-> List List))
(= (reverseList Nil) Nil)
(= (reverseList (Cons $x $xs)) (append (reverseList $xs) (Cons $x Nil)))

 ; A function to append two lists
(: append (-> List List List))
(= (append Nil $ys) $ys)
(= (append (Cons $x $xs) $ys) (Cons $x (append $xs $ys)))

 ; Test cases
! (reverseList (Cons 1 (Cons 2 (Cons 3 Nil))))
! (reverseList (Cons 1 Nil))
! (reverseList Nil)
! (reverseList (Cons 1 (Cons 2 (Cons 3 (Cons 4 (Cons 5 Nil))))))
