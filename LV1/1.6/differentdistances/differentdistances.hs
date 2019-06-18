main :: IO ()
main = do
  line <- words <$> getLine

  if length line == 1
    then return ()
    else do
      let [x1, y1, x2, y2, p] = map read line
          ans = (abs (x1 - x2) ** p + abs (y1 - y2) ** p) ** (1.0 / p)
      print ans
      main
