import Control.Monad

solvable :: (Eq a, Fractional a) => a -> a -> a -> Bool
solvable a b c = c `elem` [a + b, a * b, abs (a - b), a / b, b / a]

main :: IO ()
main = do
  n <- readLn
  replicateM_ n $ do
    [a, b, c] <- map read . words <$> getLine
    putStrLn $ if solvable a b c then "Possible" else "Impossible"
