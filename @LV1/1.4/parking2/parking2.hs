import           Control.Monad

main :: IO ()
main = do
  n <- readLn

  forM_ [1 .. n] $ \_ -> do
    _    <- getLine
    park <- fmap (map read . words) getLine
    print . (2 *) $ (-) (maximum park) (minimum park)

