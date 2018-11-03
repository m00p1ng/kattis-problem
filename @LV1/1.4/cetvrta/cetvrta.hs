findVal :: (Num a, Ord a) => a -> a -> a -> a
findVal x1 x2 x3 | x1 == x2  = x3
                 | x1 == x3  = x2
                 | otherwise = x1

main :: IO ()
main = do
  [x1, y1] <- map read . words <$> getLine
  [x2, y2] <- map read . words <$> getLine
  [x3, y3] <- map read . words <$> getLine

  let x = findVal x1 x2 x3
      y = findVal y1 y2 y3

  putStrLn $ show x ++ " " ++ show y
