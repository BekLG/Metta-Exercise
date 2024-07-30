(: List type)
(: Nil List)
(: Cons (-> $a List List))

 ; a function to foldLeft the list based on the passed function
(: foldLeft (-> $func Number List List))
(= (foldLeft $func $sum Nil) $sum)
(= (foldLeft $func $sum (Cons $x $xs))
    (foldLeft $func ($func $sum $x) $xs)
    )

 ;abstract function to call foldLeft function and pass the accumulator(sum) without requiring it from the user

(: foldl (-> $func List List))
(= (foldl $func Nil) Empty-list)
(= (foldl $func (Cons $x $xs))
    (foldLeft $func 0 (Cons $x $xs))
    )

 ;;Add function, for testing
(= (add $num1 $num2)(+ $num1 $num2))
 ;;test cases
!(foldl add (Cons 4 (Cons 2 (Cons 3 Nil))))
!(foldl add (Cons 1 (Cons 2 (Cons 3 Nil))))
