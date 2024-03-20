second1 :: [a] -> a
second1 xs = head (tail xs)

second2 :: [a] -> a
second2 xs = xs !! 1

second3 :: [a] -> a
second3 (_:(x:(_))) = x

xor1 :: Bool -> Bool -> Bool
xor1 False True = True
xor1 True False = True
xor1 _ _ = False

xor2 :: Bool -> Bool -> Bool
xor2 a b = if a then if b then False else True else if b then True else False

xor3 :: Bool -> Bool -> Bool
xor3 a b | a /= b = True
         | otherwise = False
 
sumsqr :: Int -> Int
sumsqr n = sum [x^2 | x <- [1..n]]

grid :: Int -> [(Int,Int)]
grid n = [(x,y) | x <- [0..n], y <- [0..n],  x/=y]


euclid :: Int -> Int -> Int
euclid x y | x == y = x
           | x > y = euclid (x-y) y
           | x < y = euclid x (y-x)

fastrev :: [a] -> [a]
fastrev xs = rev xs []

rev :: [a] -> [a] -> [a]
rev [] ys = ys
rev (x:xs) ys = rev xs (x:ys)