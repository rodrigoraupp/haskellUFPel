--Haskel lista 1
--exe1
osQuatroSaoIguais :: Int -> Int -> Int -> Int -> Bool
osQuatroSaoIguais x y z r = x==y && y==z && z==r

--exe2
quantosSaoIguais :: Int -> Int -> Int -> Int
quantosSaoIguais x y z
	|x==y && y==z	=3
	|x==y && y/=z	=2
	|x==z && z/=y	=2
	|y==z && z/=x	=2
	|otherwise		=0
quantosSaoIguaisSec :: Int -> Int -> Int -> Int
quantosSaoIguaisSec x y z
	|x==y && y==z	=3
	|(x/=y) && (y/=z) && (z/=x) = 0
	|otherwise 		=2

--exe3
todosDiferentes :: Int -> Int -> Int -> Bool
todosDiferentes x y z = x/=y && y/=z && x/=z

--exe6
todosIguais :: Int -> Int -> Int -> Bool
todosIguais x y z = x==y && y==z

--exe7
quantosSaoIguaisA :: Int -> Int -> Int -> Int
quantosSaoIguaisA x y z
    |todosDiferentes x y z==True    =0
    |todosIguais x y z==True        =3
    |otherwise                      =2

--exe8
elevadoDois :: Int -> Int
elevadoDois x = x*x

--exe9
elevadoQuatro :: Int -> Int
elevadoQuatro x = elevadoDois x * elevadoDois x

--exe 10
vendasExemplo :: Int -> Int
vendasExemplo n
	|n==0		=33
	|n==1		=22
	|n==2		=40
	|otherwise	=50

vendas :: Int -> Int
vendas 0 = 33
vendas 1 = 22
vendas 2 = 40
vendas _ = 50

vendaTotal :: Int -> Int
vendaTotal 0 = vendas 0
vendaTotal n = (vendas n) + vendaTotal (n-1)
