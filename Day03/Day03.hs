
count :: [a] -> Int
count [] = 0
count (x:xs) = 1 + count xs

countH :: [Char] -> Int
countH [] = 0
countH (x:xs)
 | x == 'H'  = 1 + countH xs
 | otherwise = countH xs

countChar :: Char -> [Char] -> Int
countChar _ [] = 0
countChar sym (x:xs)
 | x == sym  = 1 + countChar sym xs
 | otherwise = countChar sym xs


isLower :: Char -> Bool
isLower sym = sym >= 'a' && sym <= 'z'

isUpper :: Char -> Bool
isUpper sym = sym >= 'A' && sym <= 'Z'


lowersCount :: [Char] -> Int
lowersCount [] = 0
lowersCount (x:xs)
 | isLower x = 1 + lowersCount xs
 | otherwise = lowersCount xs
 

f :: Float -> Float -> Float
f x y = cube_x + cube_y + 2 * cube_x * cube_y
 where
  cube_x = x ** 3
  cube_y = y ** 3
 
doubleVal :: Float -> Float
doubleVal val = 2 * val

ifEven0 :: Int -> Int
ifEven0 n
 | mod n 2 == 0 = 0    -- mod n 2 => n % 2
 | otherwise    = n
 

{-
myMap :: (a -> a) -> [a] -> [a]
myMap _ [] = []
myMap f (x:xs) = (f x) : (myMap f xs)
-}

myMap f list = [ f n | n <- list]

{-
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter f (x:xs)
 | (f x) == True = x : (myFilter f xs)
 | otherwise     = myFilter f xs
 -}
 
myFilter condition list = [ n | n <- list, condition n]


f1 :: Int -> Int
f1 x = 2 * x + 1


getOp :: Char -> (Int->Int->Int)
getOp '+' = \x y -> x + y
getOp '-' = \x y -> x - y
getOp '*' = \x y -> x * y



func :: Int -> Int -> (Int->Int)
func x y = \x -> x * y