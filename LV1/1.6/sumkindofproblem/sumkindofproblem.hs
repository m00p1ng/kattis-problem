import Control.Monad

main :: IO ()
main = do
  n <- readLn
  replicateM_ n $ do
    [k, r] <- map read . words <$> getLine
    let sumR = quot (r * (r + 1)) 2
    putStrLn $ unwords $ map show [k, sumR, 2 * sumR - r, 2 * sumR]