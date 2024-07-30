(: List type)
(: Nil List)
(: Cons (-> $a List List))

 ; a function to map the passed function on a list
(: map (-> Atom List List))
(= (map $func Nil) Nil)
(= (map $func (Cons $x $xs))
    (Cons ($func $x) (map $func $xs))
    )

 ;;test cases
(= (times2 $num) (* $num 2)) ;;our function to be applied on every list member.
!(map times2 (Cons 1 (Cons 2 (Cons 3 Nil))))
!(map times2 (Cons 15 (Cons 25 Nil)))