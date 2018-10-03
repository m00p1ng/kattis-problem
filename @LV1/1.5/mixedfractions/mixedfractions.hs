solve :: [Int] -> [String]
solve (0 : 0 : xs) = []
solve (a : b : bs) =
  let fac = quot a b
      rem = mod a b
  in  unwords [show fac, show rem, "/", show b] : solve bs

main :: IO ()
main = interact (unlines . solve . (map read) . words)

