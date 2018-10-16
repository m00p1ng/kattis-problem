solve :: (Num a, Ord a) => a -> a -> String
solve a b | a + b == 13 = "Never speak again."
          | a == b      = "Undecided."
          | a > b       = "To the convention."
          | otherwise   = "Left beehind."

forever :: IO ()
forever = do
  [a, b] <- map read . words <$> getLine
  if a == 0 && b == 0
    then return ()
    else do
      putStrLn $ solve a b
      forever

main :: IO ()
main = forever
