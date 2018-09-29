main = do
    line <- getLine
    let [a, b]  = map read $ words line
        minutes = if b - 45 < 0 then b + 15 else b - 45
        hours   = if b - 45 < 0 then if a - 1 < 0 then 23 else a - 1 else a

    putStrLn $ show hours ++ " " ++ show minutes
