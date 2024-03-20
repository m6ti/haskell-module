replicate2 :: Int -> a -> [a]
replicate2 0 a = []
replicate2 n a = a : replicate (n-1) a