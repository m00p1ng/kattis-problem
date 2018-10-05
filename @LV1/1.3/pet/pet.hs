import Control.Monad
import Data.List

main :: IO ()
main = do
  line <- replicateM 5 $ map read . words <$> getLine
  let score  = map sum line
      maxVal = maximum score
      idx    = case maxIdx of
        Just a  -> a + 1
        Nothing -> -1
        where maxIdx = elemIndex maxVal score

  putStrLn $ show idx ++ " " ++ show maxVal
