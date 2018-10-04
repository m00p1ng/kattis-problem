fizzbuzz :: Int -> Int -> Int -> String
fizzbuzz x y n | mx, my    = "FizzBuzz"
               | mx        = "Fizz"
               | my        = "Buzz"
               | otherwise = show n
 where
  mx = n `mod` x == 0
  my = n `mod` y == 0

main :: IO ()
main = do
  [x, y, n] <- map read . words <$> getLine
  putStrLn . unlines $ map (fizzbuzz x y) [1 .. n]
