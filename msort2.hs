merge2 :: Ord a => [a] -> [a] -> [a]
merge2 [] a = a
merge2 a [] = a
merge2 (x:xs) (y:ys) = if x < y then (x: (merge2 xs (y:ys))) else (y:(merge2 (x:xs) ys))

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort lst = merge2 lst1 lst2
    where 
    n = length lst `div` 2
    fsthalf = take n lst
    sndhalf = drop n lst
    lst1 = msort fsthalf
    lst2 = msort sndhalf

