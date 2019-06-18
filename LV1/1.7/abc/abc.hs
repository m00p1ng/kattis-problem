import Data.Char
import Data.List

main :: IO ()
main = do
  l <- sort . map (read :: String -> Int) . words <$> getLine
  o <- map (\x -> ord x - ord 'A') <$> getLine
  putStrLn . unwords $ map (\x -> show $ l !! x) o
