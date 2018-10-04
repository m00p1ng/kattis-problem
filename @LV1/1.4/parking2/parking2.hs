import           Control.Monad

main :: IO ()
main = do
  n <- readLn

  replicateM_ n $ do
    _    <- getLine
    park <- fmap (map read . words) getLine
    print . (2 *) $ (-) (maximum park) (minimum park)
