(: List type)
(: Nil List)
(: Cons (-> $a List List))

 ; a function to filter the list based on th epassed function
(: filter (-> $func List List))
(= (filter $func Nil) Nil)
(= (filter $func (Cons $x $xs))
    (if ($func $x)
        (Cons $x (filter $func $xs))
        (filter $func $xs)
        )
    )

 ;;test cases
(= (even $num) ;;our filtering function to check if a number is even or not
    (if (== 0 (% $num 2))
        True
        False)
    )

 ;;test cases
!(filter even (Cons 4 (Cons 2 (Cons 3 Nil))))
!(filter even (Cons 15 (Cons 26 (Cons 8 Nil))))