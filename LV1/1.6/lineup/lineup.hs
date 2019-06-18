import Data.List
import Control.Monad

main :: IO ()
main = do
  n <- readLn
  bag <- replicateM n getLine

  let asc = sort bag
      des = reverse asc

  putStrLn $ if bag == asc
    then "INCREASING"
    else if bag == des
      then "DECREASING"
      else "NEITHER"