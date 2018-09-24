main = do
    n <- readLn :: IO Int
    let d = 2 ^ n + 1
    print $ d * d