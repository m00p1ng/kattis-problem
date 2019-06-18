import Data.List

main :: IO ()
main = do
  l <- sort . map read . words <$> getLine

  let d1 = l !! 1 - l !! 0
      d2 = l !! 2 - l !! 1

  print $ if d1 == d2
    then l !! 2 + d1
    else 
      if abs d1 > abs d2 
        then l !! 0 + div d1 2
        else l !! 1 + div d2 2
