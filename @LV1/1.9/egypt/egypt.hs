import Control.Monad
import Data.List

isvalid :: (Num a, Ord a) => [a] -> Bool
isvalid [a,b,c] = a ^ 2 + b ^ 2 == c ^ 2

main :: IO ()
main = do
  l <- sort . map read . words <$> getLine
  unless (all (==0) l) $ do
    if isvalid l then putStrLn "right" else putStrLn "wrong"
    main
