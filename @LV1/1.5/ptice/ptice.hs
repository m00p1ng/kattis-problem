copyStr :: Int -> String -> String
copyStr n s = concat $ replicate n s

bNum :: Char -> Char -> Int
bNum a b = if a == b then 1 else 0

calcScore :: String -> [(Char, Char, Char)] -> [Int] -> [Int]
calcScore (e:es) ((a, b, c):ss) score =
  let res = [bNum a e, bNum b e, bNum c e]
  in  calcScore es ss $ zipWith (+) res score
calcScore _ _ score = score

main :: IO ()
main = do
  _    <- getLine
  exam <- getLine

  let scorePack = zip3 a b g
       where
        a = copyStr 40 "ABC"
        b = copyStr 25 "BABC"
        g = copyStr 20 "CCAABB"

  let name = ["Adrian", "Bruno", "Goran"]
      res  = calcScore exam scorePack [0, 0, 0]
      max' = maximum res

  print max'
  putStrLn . unlines . map snd $ filter (\(x, _) -> x == max') $ zip res name
