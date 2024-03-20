pyths :: Int -> [(Int,Int,Int)]
pyths n = [(x,y,n) | x <- [1..n], y <- [1..n] ,x^2 + y^2 == n^2 ]

factors n = [x | x <- [1..n], n `mod` x == 0, n /= x]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (factors x ) == x]

product2 :: (Int,Int) -> Int
product2 (x,y) = x*y

scalar :: [Int] -> [Int] -> Int
scalar xs ys = sum [x*y | (x,y) <- zip xs ys]