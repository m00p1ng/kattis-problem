import           Control.Monad
import           Data.List
import           Data.Ord

sumT :: Int -> [Int] -> Int
sumT t x = case x of
  []               -> t
  [a]              -> t + a
  [a, b]           -> t + a + b
  (a : b : _ : bs) -> sumT (t + a + b) bs

main :: IO ()
main = do
  n     <- readLn :: IO Int
  price <- replicateM n $ read <$> getLine

  let price' = sortOn Down price
      total  = sumT 0 price'
  print total
