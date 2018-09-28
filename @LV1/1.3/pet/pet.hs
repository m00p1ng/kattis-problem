import Control.Monad
import Data.List

readList' :: [String] -> [Int]
readList' x = map read x

main = do
    lines <- replicateM 5 $ fmap words getLine
    let score = map (sum . readList') lines
        maxVal = maximum score
        idx = case maxIdx of
            Just a -> a + 1
            Nothing -> -1
            where maxIdx = elemIndex maxVal score

    putStrLn $ (show idx) ++ " " ++ (show maxVal)