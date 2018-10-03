count :: String -> Char -> Int
count s c = length $ filter (== c) s

calcCard :: [Int] -> Int
calcCard cnt = sum [ x * x | x <- cnt ]

main :: IO ()
main = do
  s <- getLine
  let deck = "TCG"
      cnt  = map (count s) deck
  print $ calcCard cnt + 7 * minimum cnt
