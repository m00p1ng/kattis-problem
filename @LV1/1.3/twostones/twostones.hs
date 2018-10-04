main :: IO ()
main = do
  n <- readLn :: IO Int
  putStrLn $ if odd n then "Alice" else "Bob"
