main :: IO ()
main = do
  [r, c] <- map read . words <$> getLine
  print $ (1 - c / r) ^ 2 * 100
