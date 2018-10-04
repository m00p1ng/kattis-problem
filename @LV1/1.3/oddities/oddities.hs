isEven :: Int -> String
isEven x | even x    = show x ++ " is even"
         | otherwise = show x ++ " is odd"

main :: IO ()
main = do
  _ <- getLine
  interact $ unlines . map (isEven . read) . words
