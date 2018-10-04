solve :: Int -> Int -> Int
solve r1 s = 2 * s - r1

main :: IO ()
main = do
  [r1, s] <- map read . words <$> getLine
  print $ solve r1 s
