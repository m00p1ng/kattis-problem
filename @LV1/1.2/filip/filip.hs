main :: IO ()
main = do
  [a, b] <- map (read :: String -> Int) . words . reverse <$> getLine
  print $ max a b
