main = do
    n <- getLine
    inp <- getLine
    let cold = filter (<0) $ map (read::String->Int) $ words inp
    print $ length cold