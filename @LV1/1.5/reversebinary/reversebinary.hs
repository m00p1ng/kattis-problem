import Data.Char
import Numeric

bin2dec :: String -> Int
bin2dec = foldl (\x y -> 2 * x + cc y) 0
          where cc x = if x == '1' then 1 else 0

main :: IO ()
main = do
  n <- readLn :: IO Int
  let revbin = reverse $ showIntAtBase 2 intToDigit n ""
  print $ bin2dec revbin
