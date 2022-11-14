main :: IO()
main = do
 line1 <- getLine
 line2 <- getLine
 let num1 = read line1 :: Double
 let num2 = read line2 :: Double
 let num3 = num1 * num2
 putStrLn (show num3)