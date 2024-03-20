bosh :: Bool -> Bool -> Bool
True `bosh` True = True
True `bosh` False = False
False `bosh` True = False
False `bosh` False = False