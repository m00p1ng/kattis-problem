quadrant x y
    | x > 0, y > 0 = 1
    | x < 0, y > 0 = 2
    | x < 0, y < 0 = 3
    | x > 0, y < 0 = 4

main = do
    x <- readLn :: IO Int
    y <- readLn :: IO Int
    print $ quadrant x y