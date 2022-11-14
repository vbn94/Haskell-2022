main :: IO()
main = do
 line1 <- getLine
 line2 <- getLine
 line3 <- getLine
 line4 <- getLine
 line5 <- getLine
 line6 <- getLine
 let x1 = read line1 :: Integer
 let y1 = read line2 :: Integer
 let x2 = read line3 :: Integer
 let y2 = read line4 :: Integer
 let xp = read line5 :: Integer
 let yp = read line6 :: Integer
 let isInside = xp >= x1 && xp <= x2 && yp >= y1 && yp <= y2  
 if isInside
 then 
  putStrLn "INSIDE"
 else
  putStrLn "OUTSIDE"



