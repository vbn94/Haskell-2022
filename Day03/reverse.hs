main :: IO()
main = do
 putStr "Enter string: "
 input <- getLine
 putStrLn ("Reversed string: " ++ (myreverse input))
 

myreverse :: [a] -> [a]
myreverse [] = []
myreverse (x:xs) = (myreverse xs) ++ [x]


doublicate :: [a] -> [a]
doublicate [] = []
doublicate (x:xs) = x : (x : (doublicate xs))


fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n-1)
