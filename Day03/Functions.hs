

expr1 :: [Int] -> [Char]
expr1 [x] = show x
expr1 (x:xs) = "(" ++ (expr xs) ++ "+" ++ (show x) ++ ")"

expr :: [Int] -> [Char]
expr [x] = show x
expr list = "(" ++ (expr (init list)) ++ "+" ++ (show (last list))  ++ ")"


myMap :: (a->b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = (f x) : (myMap f xs)

doublen :: Int -> Int
doublen n = 2*n


f :: Int -> (Int->Int)
f x = \y -> x + y

f1 :: Int -> Int -> String
f1 x y = "(" ++ (show x) ++ "+" ++ (show y) ++ ")"


quicksort [] = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser = filter (< p) xs
        greater = filter (>= p) xs


-- func1 x y = x^3 + y^3 + x^3 * y^3

func1 :: Float -> Float -> Float
func1 x y = cube_x + cube_y + cube_x * cube_y
 where
  cube_x = x ** 3
  cube_y = y ** 3


