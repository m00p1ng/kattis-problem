fib :: [Integer]
fib = zipWith (+) (0 : (1 : fib)) (0 : fib)

main :: IO ()
main = do
  n <- readLn
  putStrLn $ show (fib !! (n - 1)) ++ " " ++ show (fib !! n)
