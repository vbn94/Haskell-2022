
main :: IO()
main = do
 putStr "Enter first number: "
 line1 <- getLine
 putStr "Enter second number: "
 line2 <- getLine
 let num1 = read line1 :: Integer
 let num2 = read line2 :: Integer
 putStrLn ("Result: " ++ show (num1 + num2))
 