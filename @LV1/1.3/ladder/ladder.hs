main :: IO ()
main = do
  [h, v] <- map read . words <$> getLine
  let ans = h / (sin $ v / 180.0 * pi)
  print $ ceiling ans
