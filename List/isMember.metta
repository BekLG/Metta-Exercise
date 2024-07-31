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

 ;;test cases
! (isMember Bereket (Cons Abebe (Cons Bereket (Cons Chala Nil))))
! (isMember Dagim (Cons Ayele (Cons Bereket (Cons Chala Nil))))
