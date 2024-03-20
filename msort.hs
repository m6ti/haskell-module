merge2 :: Ord a => [a] -> [a] -> [a]
merge2 [] a = a
merge2 a [] = a
merge2 (x:xs) (y:ys) = if x < y then (x: (merge2 xs (y:ys))) else (y:(merge2 (x:xs) ys))

halve :: [a] -> ([a],[a])
halve xs = (take lhx xs, drop lhx xs)
    where lhx = length xs `div` 2

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge

