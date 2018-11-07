main :: IO ()
main = do
  (_ : xs) <- map read . words <$> getLine
  let a = minimum xs
      b = maximum xs
      r = b - a
  putStrLn . unwords $ map show [a, b, r]
