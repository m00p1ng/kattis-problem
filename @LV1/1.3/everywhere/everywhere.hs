import Control.Monad
import Data.List

solve :: IO ()
solve = do
    m <- readLn::IO Int
    set <- replicateM m getLine
    print $ length . nub $ set
    return ()

main = do
    n <- readLn::IO Int
    replicateM_ n solve