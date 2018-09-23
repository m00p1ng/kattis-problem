concat' x = (show x) ++ " Abracadabra"

main = do
    n <- readLn
    putStrLn . unlines $ map concat' [1..n]