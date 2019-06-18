import Control.Monad

main :: IO ()
main = do
  n   <- readLn
  ans <- replicateM n $ do
    [a, b] <- map (read::String->Float) . words <$> getLine
    pure (a * b + 1E-6)

  print $ sum ans
