main :: IO()
main = do
 line1 <- getLine
 let r = read line1 :: Double
 let area = pi * (r ** 2)
 putStrLn (show area)
 