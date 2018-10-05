swapVal :: String -> (a, a, a) -> (a, a, a)
swapVal [] t = t
swapVal (s:ss) (a, b, c) = swapVal ss $ case s of
  'A' -> (b, a, c)
  'B' -> (a, c, b)
  'C' -> (c, b, a)

main :: IO ()
main = do
  let t = (1, 0, 0)
  s <- getLine
  print $ case swapVal s t of
    (1, _, _) -> 1
    (_, 1, _) -> 2
    (_, _, 1) -> 3
