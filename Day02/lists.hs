
myreverse :: [a] -> [a]
myreverse [x] = [x]
myreverse (x:xs) = xs ++ [x]


mylength :: [a] -> Int
mylength [] = 0
mylength (x:xs) = 1 + mylength xs

doubleEl :: [a] -> [a]
doubleEl [] = []
doubleEl (x:xs) = [x] ++ [x] ++ doubleEl xs

