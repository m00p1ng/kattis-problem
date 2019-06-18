main :: IO ()
main = do
  [a, b, c] <- map read . words <$> getLine
  print $ max (b - a) (c - b) - 1
