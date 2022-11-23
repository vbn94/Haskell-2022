
doubleVal :: Integer -> Integer
doubleVal num = 2 * num

isEven :: Integer -> Bool
isEven num = (mod num 2) == 0


biggestOf3 :: Double -> Double -> Double -> Double
biggestOf3 num1 num2 num3
 | num1 > num2 && num1 > num3 = num1
 | num2 > num3                = num2
 | otherwise                  = num3


{-
biggestOf3 :: Double -> Double -> Double -> Double
biggestOf3 num1 num2 num3 = max num1 (max num2 num3)
-}

{-
biggestOf3 :: Double -> Double -> Double -> Double
biggestOf3 num1 num2 num3 = 
 if num1 > num2 && num1 > num3  then
  num1 
 else 
  if num2 > num3 then
   num2
  else
   num3
-}

add1 :: Integer -> Integer
add1 num = num + 1

remove1 :: Integer -> Integer
remove1 num = num - 1

execfunc :: Integer -> (Integer->Integer) -> Integer
execfunc num func = func num

factorial :: Integer -> Integer
factorial 0 = 1
factorial num = num * factorial (num - 1)


{-
factorial :: Integer -> Integer
factorial num = 
 if num == 0 then
  1
 else
  num * factorial(num - 1)
-}

{-

factorial :: Integer -> Integer
factorial num
 | num == 0  = 1
 | otherwise = num * factorial (num - 1) 
 
-}

fibbonaci :: Integer -> Integer
fibbonaci 0 = 0
fibbonaci 1 = 1
fibbonaci n = fibbonaci (n - 2) + fibbonaci (n - 1)


day :: Int -> String
day x = case x of
 1 -> "Monday"
 2 -> "Tuesday"
 3 -> "Wednesday"
 4 -> "Thursday"
 5 -> "Friday"
 6 -> "Saturday"
 7 -> "Sunday"
 _ -> "Not valid"

