(: List type)
(: Nil List)
(: Cons (-> $a List List))

 ; Function to check if an Atom is a member of a list
(: isMember (-> $a List Bool))
(= (isMember $a Nil) False)
(= (isMember $a (Cons $x $xs))
    (if (== $a $x)
        True
        (isMember $a $xs)
        )
    )

 ; Function to remove duplicates from a list
(: remove-duplicates (-> List List))
(= (remove-duplicates Nil) Nil)
(= (remove-duplicates (Cons $x $xs))
    (if (isMember $x $xs)
        (remove-duplicates $xs)
        (Cons $x (remove-duplicates $xs))
        )
    )
 ;;test cases
! (remove-duplicates (Cons A (Cons B (Cons A Nil))))
! (remove-duplicates (Cons A (Cons B (Cons B Nil))))
