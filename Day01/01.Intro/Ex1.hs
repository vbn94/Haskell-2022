main :: IO()
main = do
 putStr "Enter firstname: "
 fname <- getLine
 putStr "Enter lastname: "
 lname <- getLine
 putStrLn (fname ++ " " ++ lname)