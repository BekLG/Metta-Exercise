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
(: removeDuplicate (-> List List))
(= (removeDuplicate Nil) Nil)
(= (removeDuplicate (Cons $x $xs))
    (if (isMember $x $xs)
        (removeDuplicate $xs)
        (Cons $x (removeDuplicate $xs))
    )
)
 ;;test cases
! (removeDuplicate (Cons A (Cons B (Cons A Nil))))
! (removeDuplicate (Cons A (Cons B (Cons B (Cons C Nil)))))
