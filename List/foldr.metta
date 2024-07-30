(: List type)
(: Nil List)
(: Cons (-> $a List List))

 ; a function to foldRight the list based on the passed function
(: foldRight (-> $func Number List List))
(= (foldRight $func $sum Nil) $sum)
(= (foldRight $func $sum (Cons $x $xs))
    (foldRight $func ($func $sum $x) $xs)
    )
 ;abstract function to call foldRight function and pass the accumulator(sum) without requiring it from the user
(: foldr (-> $func List List))
(= (foldr $func Nil) Empty-list)
(= (foldr $func (Cons $x $xs))
    (foldRight $func 0 (reverseList(Cons $x $xs))) ;;here we passed the reversed list, So it will start folding from the right!
    )

 ; Function to reverse a list
(: reverseList (-> List List))
(= (reverseList Nil) Nil)
(= (reverseList (Cons $x $xs)) (append (reverseList $xs) (Cons $x Nil)))

 ; A function to append two lists
(: append (-> List List List))
(= (append Nil $ys) $ys)
(= (append (Cons $x $xs) $ys) (Cons $x (append $xs $ys)))

 ;;Add function, for testing
(= (add $num1 $num2)(+ $num1 $num2))

 ;;test cases
!(foldr add (Cons 4 (Cons 2 (Cons 3 Nil))))
!(foldr add (Cons 1 (Cons 2 (Cons 3 Nil))))