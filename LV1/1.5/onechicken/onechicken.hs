main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine
  let diff = a - b
      p    = if abs diff /= 1 then "pieces" else "piece"

  putStrLn $ if diff > 0
    then "Dr. Chaz needs " ++ show diff ++ " more " ++ p ++ " of chicken!"
    else "Dr. Chaz will have " ++ show (-diff) ++ " " ++ p ++ " of chicken left over!"
