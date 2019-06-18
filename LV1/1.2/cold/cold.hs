main :: IO ()
main = do
  _   <- getLine
  inp <- map read . words <$> getLine
  let cold = filter (< 0) inp
  print $ length cold
