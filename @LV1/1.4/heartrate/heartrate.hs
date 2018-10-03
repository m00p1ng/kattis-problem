import           Control.Monad

solve :: IO ()
solve = do
  line <- getLine
  let [b, p] = map (read :: String -> Double) $ words line
      bpm    = 60 * b / p
      abpm   = 60 / p
  putStrLn $ show (bpm - abpm) ++ show bpm ++ show (bpm + abpm)

main = do
  n <- readLn :: IO Int
  replicateM_ n solve
