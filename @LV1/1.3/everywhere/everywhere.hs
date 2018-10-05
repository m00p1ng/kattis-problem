import Control.Monad
import Data.List

main :: IO ()
main = do
  n <- readLn
  replicateM_ n $ do
    m   <- readLn
    set <- replicateM m getLine
    print $ length . nub $ set
