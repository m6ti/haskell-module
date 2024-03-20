e1 :: [Bool]
e1 = [True,False,True]

e2 :: [[Int]]
e2 = [[1,2],[3,4]]

e3 :: (Char,Bool)
e3 = ('a',True)

e4 :: [(String,Int)]
e4 = [("hi",23)]

e5 :: Float -> Float
e5 n = n*2

e6 :: Int -> Int -> Int
e6 a b = a - b

e7 :: (a,b) -> (b,a)
e7 (x,y) = (y,x)

e8 :: a -> (a,a)
e8 x = (x,x)

copy :: a -> a
copy x = x

one :: a -> [a]
one x = [x]

first :: (a,b) -> a
first (x,y) = x

second :: (a,b) -> b
second (x,y) = y

mult :: Float -> Float -> Float
mult m n = m*n
