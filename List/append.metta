(: List type)
(: Nil List)
(: Cons (-> $a List List))

; A function to append two lists
(: append (-> List List List))
(= (append Nil $ys) $ys)
(= (append (Cons $x $xs) $ys) (Cons $x (append $xs $ys)))

;;test cases
!(append (Cons 1 (Cons 2 (Cons 3 Nil))) (Cons 4 (Cons 5 (Cons 6 Nil))))
!(append (Cons A (Cons B  Nil)) (Cons C (Cons D (Cons E Nil))))