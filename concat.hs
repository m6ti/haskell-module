concat2 :: [[a]] -> [a]
concat2 [[]] = []
concat2 ([x]:xs) = x : concat xs