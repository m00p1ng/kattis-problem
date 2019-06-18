main :: IO ()
main = do
  n <- readLn
  let d = 2 ^ n + 1
  print $ d * d
