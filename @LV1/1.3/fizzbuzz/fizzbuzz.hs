fizzbuzz x y n
    | mx, my = "FizzBuzz"
    | mx = "Fizz"
    | my = "Buzz"
    | otherwise = show n
    where 
        mx = n `mod` x == 0
        my = n `mod` y == 0

main = do
    line <- getLine
    let [x, y, n] = map read $ words line
    putStrLn . unlines $ map (fizzbuzz x y) [1..n]