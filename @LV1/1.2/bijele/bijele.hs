main = do
    let piece = [1, 1, 2, 2, 2, 8]
    line <- getLine
    let x = map read $ words line

    let ans = zipWith (-) piece x
    putStrLn . unwords $ map show ans