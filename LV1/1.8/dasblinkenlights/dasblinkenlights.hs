main :: IO ()
main = do 
  [a, b, tl] <- map read . words <$> getLine
  let lcm = div (a*b) (gcd a b)

  putStrLn $ if div tl lcm >= 1 then "yes" else "no"