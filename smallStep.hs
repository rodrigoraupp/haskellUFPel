--Small Step

--Sintaxe
--E := n | E+E | E*E

data E = Num Int | Soma E E | Mult E E
    deriving(Eq, Show)

smallStepE:: E -> E
--ir do mais específico para o mais geral
smallStepE(Soma (Num n1)(Num n2)) = Num(n1+n2)
smallStepE(Soma (Num n) e) = Soma (Num n) (smallStepE e)
smallStepE(Soma e1 e2) = Soma(smallStepE e1) e2
smallStepE(Mult (Num n1)(Num n2)) = Num(n1*n2)
smallStepE(Mult (Num n) e) = Mult (Num n) (smallStepE e)
smallStepE(Mult e1 e2) = Mult(smallStepE e1) e2

{-interpretE:: E -> E  --assim está correto
interpretE (Num n) = Num n
interpretE e1 = interpretE (smallStepE e1)
-}

data B = TRUE | FALSE | Not B | Or B B | And B B
    deriving(Eq, Show)

smallStepB:: B -> B
smallStepB(Not FALSE) = True
smallStepB(Not TRUE) = False
smallStepB(Not b) = Not(smallStepB b)
smallStepB(Or FALSE b) = b
smallStepB(Or TRUE b) = True
smallStepB(Or b1 b2) = Or(smallStepB b1) b2 

interpretB:: B -> B
interpretB b = if(isFinalB b) then b else (interpretB (smallStepB b))

-- 20*4 + 40*2
ex1:: E
ex1 = Soma(Mult (Num 20)(Num 4)) (Mult (Num 40)(Num 2))

--((3+2)*(2+7)) + 29
ex2:: E
ex2 = Soma (Mult (Soma (Num 3)(Num 2)) (Soma (Num 2)(Num 7))) (Num 29)

-- not(true ^ false) v (not false ^ false)
ex3:: B
ex3 = Or(Not(And TRUE FALSE)) (And (Not FALSE) FALSE)


