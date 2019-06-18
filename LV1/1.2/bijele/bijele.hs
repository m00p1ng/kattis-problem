main :: IO ()
main = do
  let piece = [1, 1, 2, 2, 2, 8]
  x <- map read . words <$> getLine
  let ans = zipWith (-) piece x

  putStrLn . unwords $ map show ans
