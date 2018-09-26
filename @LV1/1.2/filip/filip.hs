main = do
    s <- getLine
    let [a, b] = map (read::String->Int) $ (words . reverse) s
    print $ max a b