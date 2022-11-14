main :: IO()
main = do
 putStr "Enter number to guess: "
 line1 <- getLine
 let num = read line1 :: Integer
 guessTheNum num 

guessTheNum :: Integer -> IO()
guessTheNum num = do
 input <- getLine
 let x = read input :: Integer
 if x == num then
  putStrLn "You win!"
 else
  do
   if x < num then
    do
	 putStrLn "Too low!"
	 guessTheNum num
   else
    do
     putStrLn "Too high!"
     guessTheNum num	 
