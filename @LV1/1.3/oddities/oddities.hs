isEven :: Int -> String
isEven x
    | even x = show x ++ " is even"
    | otherwise = show x ++ " is odd"

solve [] = []
solve (x:xs) = isEven x : (solve xs)

readInput = (map read) . words

main = do
    _ <- readLn :: IO Int
    interact (unlines . solve . readInput)