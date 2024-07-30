(: List type)
(: Nil List)
(: Cons (-> $a List List))

 ; A function to remove element from a list
(: removeElement (-> $t List List ))
 ;; if the list is empty, return Nil
(= (removeElement $elem Nil) Nil)
 ;; if $x equals $elem, skip it; otherwise, include $x in the new list.
(= (removeElement $elem (Cons $x $xs))
    (if (== $x $elem) (removeElement $elem $xs)
        (Cons $x (removeElement $elem $xs)))
    )

 ;; Test cases
!(removeElement 1 (Cons 1 (Cons 2 (Cons 3 Nil))))
!(removeElement 3 (Cons 1 (Cons 2 (Cons 3 Nil))))
!(removeElement 4 (Cons 1 (Cons 2 (Cons 3 Nil))))
