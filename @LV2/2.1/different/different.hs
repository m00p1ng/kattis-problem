solve :: Num a => [a] -> [a]
solve [] = []
solve (a : b : rest) = abs (a - b) : solve rest

readInput :: String -> [Int]
readInput = map read . words

writeOutput :: [Int] -> String
writeOutput = unlines . map show

main :: IO ()
main = interact $ writeOutput . solve . readInput
