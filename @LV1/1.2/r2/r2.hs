solve r1 s = 2 * s - r1

main = do
    inp <- getLine
    let [r1,s] = map read (words inp)
    print $ solve r1 s
