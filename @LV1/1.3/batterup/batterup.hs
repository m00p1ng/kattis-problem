main :: IO ()
main = do
  _   <- getLine
  num <- filter (>= 0) . map read . words <$> getLine
  print $ sum num / fromIntegral (length num)
