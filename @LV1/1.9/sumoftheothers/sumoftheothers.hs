solve :: [Int] -> Int
solve l = div (sum l) 2

main :: IO ()
main = interact (unlines . map (show . solve . map read . words) . lines)
