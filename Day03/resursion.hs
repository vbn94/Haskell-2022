
maxNum :: Int -> Int -> Int
maxNum num1 num2 = if num1 > num2 then num1 else num2


maxNum2 :: Int -> Int -> Int
maxNum2 num1 num2
 | num1 > num2 = num1
 | otherwise   = num2

{--
digitToWord :: Int -> String
digitToWord num
 | num == 1  = "One"
 | num == 2  = "Two"
 | num == 9  = "Nine"
 | otherwise = "Invalid digit"
--}

{--
digitToWord :: Int -> String
digitToWord 1 = "One"
digitToWord 2 = "Two"
digitToWord 9 = "Nine"
digitToWord _ = "Invalid digit"
--}

digitToWord :: Int -> String
digitToWord num = case num of
 1 -> "One"
 2 -> "Two"
 9 -> "Nine"
 _ -> "Invalid digit"


{-
fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)
-}

fact :: Int -> Int
fact n
 | n == 0    = 1
 | otherwise = n * fact (n-1)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

suma :: Int -> Int
suma 0 = 0
suma n = n + suma (n-1)


printN1 :: Int -> IO()
printN1 1 = putStrLn "1"
printN1 n = do
 putStrLn (show n)
 printN1 (n-1)

print1N :: Int -> IO()
print1N 1 = putStrLn "1"
print1N n = do
 putStrLn (show n)
 print1N (n-1)


drawTriangle :: Int -> IO()
drawTriangle 0 = putStr ""
drawTriangle n = do
 putStrLn (replicate n '*')
 drawTriangle (n-1)
 
drawRect :: Int -> Int -> IO()
drawRect 0 _s = putStr ""
drawRect n m = do
 putStrLn (replicate m '*')
 drawRect (n-1) m


drawSqare :: Int -> IO()
drawSqare n = drawRect n n
 

log2 :: Int -> Int
log2 1 = 0
log2 n = 1 + log2 (div n 2)