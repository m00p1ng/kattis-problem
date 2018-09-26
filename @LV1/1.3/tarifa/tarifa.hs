solve x n arr = (-) (n * x + x) $ sum arr
readInput = (map read) . words

main = do
    x <- readLn :: IO Int
    n <- readLn :: IO Int
    interact (show . (solve x n) . readInput)