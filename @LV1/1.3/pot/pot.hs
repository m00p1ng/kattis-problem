import           Control.Monad

makePair :: IO Int
makePair = do
  n <- readLn
  return $ (n `quot` 10) ^ (n `mod` 10)

main :: IO ()
main = do
  n   <- readLn
  ans <- sum <$> replicateM n makePair
  print ans
