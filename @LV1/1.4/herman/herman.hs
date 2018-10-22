main :: IO ()
main = do
  r <- readLn
  print $ pi * r * r
  print $ 2 * r * r