import Data.Char

sumDigit :: String -> Int
sumDigit s = sum $ map digitToInt s

solve :: Int -> Int -> Int -> String
solve sumN n i =
  if sumN == sumDigit (show (n * i)) then show i else solve sumN n (i + 1)

main :: IO ()
main =
  interact (unlines . map (\x -> solve (sumDigit x) (read x) 11) . init . words)
