safetail :: [a] -> [a]
safetail b | null b == True = []
             | otherwise = tail b