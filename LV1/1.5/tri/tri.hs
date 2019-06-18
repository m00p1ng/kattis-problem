findSign :: Int -> Int -> Int -> (String, String)
findSign a b c
  | a + b == c = ("+", "=")
  | a - b == c = ("-", "=")
  | a * b == c = ("*", "=")
  | quot a b == c = ("/", "=")
  | a == b + c = ("=", "+")
  | a == b - c = ("=", "-")
  | a == b * c = ("=", "*")
  | a == quot b c = ("=", "/")

main :: IO ()
main = do
  [a, b, c] <- map read . words <$> getLine
  let (sa, sb) = findSign a b c
  putStrLn $ show a ++ sa ++ show b ++ sb ++ show c
