splitDash :: String -> [String]
splitDash s = case dropWhile (== '-') s of
  "" -> []
  s' -> w : splitDash s'' where (w, s'') = break (== '-') s'

main :: IO ()
main = do
  s <- getLine
  putStrLn $ map head $ splitDash s
