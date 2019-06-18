main :: IO ()
main = do
  n <- readLn:: IO Float
  let ans = n * 5280 * 1000 / 4854

  print $ round ans
