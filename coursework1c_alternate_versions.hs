
sumsqr :: Int -> Int
sumsqr n = sum (map (^2) [1..n])

grid :: Int -> [(Int,Int)]
grid 0 = []
grid n = zip (repeat n) [0..n-1] ++ zip [0..n-1] (repeat n) ++ grid (n-1)

euclid :: Int -> Int -> Int
euclid x y | x == y = x
           | x > y = euclid (x-y) y
           | x < y = euclid x (y-x)
