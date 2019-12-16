--Haskell lista 2
--exe1
maxNumero :: Int -> Int -> Int
maxNumero x y
    |x>y        =x
    |otherwise  =y

--exe2
vendas :: Int -> Int
vendas 0 = 30
vendas 1 = 44
vendas 2 = 40
vendas 3 = 0
vendas 4 = 100
vendas _ = 50

maiorVenda :: Int -> Int
maiorVenda 0 = vendas 0
maiorVenda n = maxNumero (vendas n) (maiorVenda (n-1))

--exe3
maxVenda :: Int -> Int
maxVenda 0 = maiorVenda 0
maxVendas n = 

--exe4
zeroVendas :: Int -> Int
zeroVendas
