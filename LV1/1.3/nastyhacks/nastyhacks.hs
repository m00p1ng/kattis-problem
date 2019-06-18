import Control.Monad

advertise :: Ord a => a -> a -> String
advertise d c | d == c    = "does not matter"
              | d > c     = "advertise"
              | otherwise = "do not advertise"

main :: IO ()
main = do
  n <- readLn
  replicateM_ n $ do
    [r, e, c] <- map read . words <$> getLine
    putStrLn $ advertise (e - r) c

