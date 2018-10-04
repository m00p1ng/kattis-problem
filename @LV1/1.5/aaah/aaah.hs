main :: IO ()
main = do
  a <- getLine
  b <- getLine
  putStrLn $ if length a < length b then "no" else "go"
