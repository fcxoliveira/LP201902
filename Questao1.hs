fatorial :: Int -> Int
fatorial 0 = 1
fatorial x = x * fatorial(x - 1)

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)

fibonacciList :: Int -> [Int]
fibonacciList 0 = [0]
fibonacciList n = fibonacciList(n-1) ++ [fibonacci(n)]

remover :: Int-> [a] -> [a]
remover x y= take (x-1) y ++ drop x y

inserir :: a-> Int-> [a] -> [a]
inserir numero index lista= take (index-1) lista ++ [numero] ++ drop (index - 1) lista

par     n = n `mod` 2 == 0
impar   n = if n `mod` 2 == 0 then False else True

quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs

getPares :: [Int] -> [Int]
getPares valor = quicksort (filter par valor)

getImpares :: [Int] -> [Int]
getImpares valor = quicksort (filter impar valor)

separarImparPar :: [Int] -> ([Int], [Int])
separarImparPar tupla = (getImpares tupla, getPares tupla)
ordenarImparPar lista = getImpares lista ++ getPares lista

main = do
    print (fibonacci 7)
    print (fatorial 4)
    print (fibonacciList 4)
    print (remover 2 [5,4,3,2,1])
    print(inserir 0 2 [5,4,3,2,1])
    print(separarImparPar [8,7,6,5,1,2,3,4])
    print(ordenarImparPar [8,7,6,5,1,2,3,4])