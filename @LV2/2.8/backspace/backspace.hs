-- +----------+
-- | TOO SLOW |
-- +----------+
solve [] out = out
solve (s:ss) out
    | s == '<', not $ null out = solve ss (init out)
    | s == '<', null out = solve ss out
    | otherwise = solve ss (out ++ [s])

main = do
    line <- getLine
    putStrLn $ solve line ""