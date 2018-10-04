concat' :: Int -> String
concat' x = (show x) ++ " Abracadabra"

main :: IO ()
main = do
  n <- readLn
  putStrLn . unlines $ map concat' [1 .. n]
