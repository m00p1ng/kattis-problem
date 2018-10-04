quadrant :: Int -> Int -> Int
quadrant x y | x > 0, y > 0 = 1
             | x < 0, y > 0 = 2
             | x < 0, y < 0 = 3
             | x > 0, y < 0 = 4

main :: IO ()
main = do
  x <- readLn
  y <- readLn
  print $ quadrant x y
