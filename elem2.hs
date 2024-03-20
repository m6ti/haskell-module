elem2 :: Eq a => a -> [a] -> Bool
elem2 a [] = False
elem2 a (x:xs) = if (a == x) then True else elem2 a xs