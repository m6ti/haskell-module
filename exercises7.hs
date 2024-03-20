-- Higher order functions that return functions are just curried functions.
-- 1)
-- g f xs = [f x | x <- xs, even x]

-- 2)
g f xs = map f (filter even xs)

-- This is how foldr works...
foldright :: (a->b->b) -> b -> [a] -> b
foldright f a [] = a
foldright f a (x:xs) = f x (foldright f a xs)

-- 3)
map2 :: (a->b) -> [a] -> [b]
map2 f = foldr (\y ys -> f y : ys) []

filter2 :: (a->Bool) -> [a] -> [a]
filter2 f = foldr (\y ys -> if f y then y : ys else ys) [] 