solve :: [Int] -> [Int] -> Int
solve v [] = sum v
solve v (x:xs) =
  let n  = x `mod` 42
      nv = replaceAt' n v
  in  solve nv xs

replaceAt' :: Int -> [Int] -> [Int]
replaceAt' idx list = let (x,_:y) = splitAt idx list 
                      in x ++ [1] ++ y

main :: IO ()
main = do
  let visited = replicate 42 0
  interact (show . solve visited . map read . words)
