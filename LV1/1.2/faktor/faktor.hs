main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine
  print $ a * (b - 1) + 1
