import Control.Monad

main :: IO ()
main = do
  c <- readLn
  n <- readLn

  ans <- replicateM n $ do
    l <- map (read::String->Float) . words <$> getLine
    return $ product l

  print $ sum ans * c
