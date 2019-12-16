--Lista3
--exe1
dobraLista:: [Int]->[Int]
dobraLista [] = []
dobraLista(x:xs) = 2*x:dobraLista xs

--exe2
tamanho:: [Int]->Int
tamanho [] = 0
tamanho (x:r) = tamanho r + 1

--exe3
produtoLista:: [Int]->Int
produtoLista [] = 1 --é possível por produtoLista[x]=x
produtoLista (x:r) = x * produtoLista r

--exe4
andLista:: [Bool] -> Bool
andLista [x] = x
andLista (x:xs) = x && andLista xs

--exe5
concatLista:: [[Int]] -> [Int]
concatLista [] = []
concatLista (x:xs) = x ++ concatLista xs

--exe6
inverteLista:: [Int] -> [Int]
inverteLista [x] = [x]
inverteLista (x:xs) = inverteLista xs ++ [x]