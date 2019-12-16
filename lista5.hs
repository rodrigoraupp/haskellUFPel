{-data Temperatura = Frio | Calor
	deriving(Eq,Show)

data Estacao = Verao | Outono | Inverno | Primavera
	deriving(Eq,Show)

tempo :: Estacao -> Temperatura
tempo Verao  = Calor
tempo _= Frio

data Bool = True | False
-}
{-data Forma = Circulo Float |Retangulo Float Float
	deriving(Eq,Show)

redondo :: Forma -> Bool
redondo (Circulo x) = True
redondo (Retangulo x y) = False

area :: Forma -> Float
area (Circulo r) = pi*r*r
area (Retangulo b a) = b*a
-}

data Arvore = Folha Int | No Int Arvore Arvore
	deriving(Eq,Show)

arv1:: Arvore
arv1 = No 1 (No 2 (Folha 3) (Folha 4))(Folha 7)

multArv:: Arvore -> Arvore
multArv (Folha n) = Folha (2*n)
multArv(No n a1 a2) = No (2*n) (multArv a1) (multArv a2)

contArv:: Arvore -> Int
contArv (Folha n) = 1
contArv(No n a1 a2) = (contArv a1) + (contArv a2) + 1

maiorArv:: Arvore -> Int
maiorArv (Folha n) = n
maiorArv (No n a1 a2) = max (maiorArv a1) (maiorArv a2)