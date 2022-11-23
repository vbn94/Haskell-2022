
myhead :: [a] -> a
myhead (x:_) = x

mytail :: [a] -> [a]
mytail (_:xs) = xs

mysum :: [Int] -> Int
mysum [] = 0
mysum (x:xs) = x + (mysum xs)

mylength :: [a] -> Int
mylength [] = 0
mylength (x:xs) = 1 + (mylength xs)

myreverse :: [a] -> [a]
myreverse [] = []
myreverse (x:xs) = (myreverse xs) ++ [x]

fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n-1)

-- factlist :: Int -> [Int]
factlist n = [fact x | x <- [0..n]]