

log2 :: Int -> Int
log2 1 = 0
log2 n = 1 + log2 (div n 2)

fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n-1)


fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)

triangle :: Int -> IO()
triangle 0 = putStrLn ""
triangle n = do
 putStrLn (replicate n '*')
 triangle (n - 1)
 


findFactorial :: Int -> Int -> Int -> Int
findFactorial n initVal index
 | index > n = index
 | otherwise = findFactorial n (initVal * index) (index + 1)

factorial :: Int -> Int
factorial n = findFactorial n 1 1