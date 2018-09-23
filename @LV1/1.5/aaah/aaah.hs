main = do
    a <- getLine
    b <- getLine
    if length a < length b
        then
            putStrLn "no"
        else
            putStrLn "go"
