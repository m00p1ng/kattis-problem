main :: IO ()
main = do
  n <- readLn
  print $ n ** (1.0/n)