main = do
    line <- getLine
    let [h, v] = map read $ words line
    let ans = h / (sin $ v / 180.0 * pi)
    print $ ceiling ans