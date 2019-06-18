import Control.Monad
import Data.Char
import Data.List
import Data.Function

sortOrder :: [(Int, String)] -> [(Int, String)]
sortOrder = sortBy (compare `on` fst)

solve :: [[String]] -> [(Int, String)] -> [(Int, String)]
solve ([a, b] : xs) l = solve xs $ if isDigit $ head a
  then (read a, b) : l
  else (2 * read b, a) : l
solve _ l = l

main :: IO ()
main = do
  n <- readLn
  l <- replicateM n $ words <$> getLine
  mapM_ (putStrLn . snd) $ sortOrder $ solve l []
