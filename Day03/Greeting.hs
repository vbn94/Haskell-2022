
main :: IO()
main = do
 putStr "Enter your name: "
 line1 <- getLine
 putStrLn ("Hello, " ++ line1 ++ ".")