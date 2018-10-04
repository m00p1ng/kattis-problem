import           Control.Monad

main :: IO ()
main = do
  n <- readLn
  replicateM_ n $ do
    [b, p] <- map read . words <$> getLine
    let bpm  = 60 * b / p
        abpm = 60 / p
    putStrLn $ show (bpm - abpm) ++ show bpm ++ show (bpm + abpm)
