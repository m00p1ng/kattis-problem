main :: IO ()
main = do
  [n, m] <- map read . words <$> getLine
  let a = min n m + 1
      b = max n m + 1
  mapM_ print [a..b]
