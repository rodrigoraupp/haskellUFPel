{-data Arvore = Folha Int | No Int Arvore Arvore
    deriving(Eq, Show)

arv1::Arvore 
arv1 = No 3(No 4(Folha 2)(Folha 4))(Folha 3)

somaArvore:: Arvore -> Int
somaArvore(Folha n) = n
somaArvore(No n a1 a2) = n + somaArvore a1 + somaArvore a2
-}
-- E:= n | E+E | E*E
data E = Num Int | Soma E E | Mult E E | If B E E
    deriving(Eq, Show)

bigStepE:: E -> Int
bigStepE(Num n) = n
bigStepE(Soma e1 e2) = bigStepE e1 + bigStepE e2
bigStepE(Mult e1 e2) = bigStepE e1 * bigStepE e2
bigStepE(If b e1 e2) = case(bigStepB b) of
    True -> bigStepE e1
    False -> bigStepE e2
    
-- 1+3*4
p1:: E
p1 = Soma (Num 1) (Mult (Num 3) (Num 4))

--(10+20)*(4+1)
p2:: E
p2 = Mult (Soma (Num 10) (Num 20)) (Soma (Num 4) (Num 1))

data B = TRUE | FALSE | Not B | And B B | Or B B
    deriving(Eq, Show)

bigStepB:: B -> Bool
bigStepB TRUE = True
bigStepB FALSE = False
bigStepB (Not b) = case (bigStepB b) of
    True -> False
    False -> True
bigStepB(And b1 b2) = case (bigStepB b1) of
    True -> bigStepB b2
    False -> False
bigStepB(Or b1 b2) = case (bigStepB b1) of
    True -> True
    False -> bigStepB b2

--not(T and T or T and F)
p3:: B
p3 = Not (Or (And TRUE TRUE) (And TRUE FALSE))  

--T and (T or not(T or F))
p4:: B
p4 = And TRUE (Or TRUE (Not(Or TRUE FALSE)))

p5:: E
p5 = If TRUE (Num 2) (Num 3)
