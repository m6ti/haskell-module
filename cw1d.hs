-- Haskell Coursework 1d
--
-- Mateusz Klocek, Aaron Janjuha
-- psymk6@nottingham.ac.uk, psyaj6@nottingham.ac.uk



import Data.Char

--chompold :: String -> String
--chompold (x:xs) | null xs = [x]
--             | head xs == x = x : chomp xs
--             | otherwise = [x]

chomp :: String -> String
chomp xs = takeWhile (== head xs) xs

munch :: String -> String
munch = chomp . (take 9)

runs :: String -> [String]
runs [] = []
runs xs = ys : runs (drop (length ys) xs)
          where ys = munch xs

--filter2 :: (a->Bool) -> [a] -> [a]
--filter2 f = foldr (\y ys -> if f y then y : ys else ys) [] 


--oldencode :: String -> [(Char,Int)]
--oldencode [] = []
--oldencode xs = (head (head (runs xs)), length (munch xs)) : encode (drop (length (munch xs)) xs)

encode :: String -> [(Char,Int)]
encode xs = map (\xs -> (head xs,length xs)) (runs xs)

flatten :: [(Char,Int)] -> String
flatten [] = []
flatten (x:xs) = [fst x] ++ [intToDigit (snd x)] ++ flatten xs

compress :: String -> String
compress = flatten . encode 

decode :: [(Char,Int)] -> String
decode [] = []
decode (x:xs) = replicate (snd x) (fst x) ++ decode xs

expand :: String -> [(Char,Int)]
expand [] = []
expand (x:y:zs) = (x, digitToInt y): expand zs

--find :: Char -> Int
--find a = head [i | (x,i) <- zip k [0..9], x == a]
--    where k = "0123456789"

decompress :: String -> String
decompress = decode . expand 