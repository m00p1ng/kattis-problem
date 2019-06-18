import Control.Monad
import Text.Printf

main :: IO ()
main = do
  n <- readLn
  replicateM_ n $ do
    (m:score) <- map read . words <$> getLine
    let mean   = sum score / m
        remain = length $ filter (> mean) score
    printf "%.3f%%\n" $ 100.00 * (fromIntegral remain / m :: Double)
