import Data.Char

isMakeSense :: [String] -> Int -> Bool
isMakeSense (x : xs) cnt = if isDigit $ head x
  then (read x == cnt) && isMakeSense xs (cnt + 1)
  else isMakeSense xs (cnt + 1)
isMakeSense _ _ = True

main :: IO ()
main = do
  _ <- getLine
  l <- words <$> getLine
  putStrLn $ if isMakeSense l 1
    then "makes sense"
    else "something is fishy"
