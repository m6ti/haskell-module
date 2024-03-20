select :: [a] -> Int -> a
select (x:xs) 0 = x
select (x:xs) n = select xs (n-1)