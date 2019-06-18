solve :: (Ord a, Num a) => a -> a -> a -> [a] -> a
solve _ _ cnt [] = cnt
solve t total cnt (x : xs) =
  if total + x > t
    then cnt 
    else solve t (total + x) (cnt + 1) xs

getInput :: IO [Int]
getInput = map read . words <$> getLine

main :: IO ()
main = do
  [_, t] <- getInput
  l      <- getInput
  print $ solve t 0 0 l

