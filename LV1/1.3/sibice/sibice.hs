import Control.Monad

main :: IO ()
main = do
  [n, w, h] <- map read . words <$> getLine
  let d = sqrt $ fromIntegral (w * w + h * h)

  replicateM_ n $ do
    k <- readLn
    putStrLn $ if k <= d then "DA" else "NE"
