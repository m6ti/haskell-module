
su :: [Int] -> Int
su [] = 0
su (x:xs) = x + su xs
