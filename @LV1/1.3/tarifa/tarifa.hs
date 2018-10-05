solve :: Int -> Int -> [Int] -> Int
solve x n arr = (-) (n * x + x) $ sum arr

main :: IO ()
main = do
  x <- readLn
  n <- readLn
  interact $ show . solve x n . map read . words
