import Data.Char
import Text.Printf

count :: (Char -> Bool) -> String -> Float
count cond s = fromIntegral $ length $ filter cond s

main :: IO ()
main = do
  s <- getLine
  let len = fromIntegral $ length s
  let l = [l1,l2,l3,l4] where
      l1  = count (== '_') s
      l2  = count isLower s
      l3  = count isUpper s
      l4  = len - (l1 + l2 + l3)

  mapM_ (\x -> printf "%.6f\n" $ x / len) l