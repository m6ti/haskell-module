merge2 :: Ord a => [a] -> [a] -> [a]
merge2 [] a = a
merge2 a [] = a
merge2 (x:xs) (y:ys) = if x < y then (x: (merge2 xs (y:ys))) else (y:(merge2 (x:xs) ys))