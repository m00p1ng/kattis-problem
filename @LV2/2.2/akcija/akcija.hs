import           Control.Monad
import           Data.List

sumT :: Int -> [Int] -> Int
sumT t []               = t
sumT t [a]              = t + a
sumT t [a, b]           = t + a + b
sumT t (a : b : _ : bs) = sumT (t + a + b) bs

main :: IO ()
main = do
  n     <- readLn :: IO Int
  price <- replicateM n $ read <$> getLine

  let price' = reverse $ sort price
      total  = sumT 0 price'
  print total
