import Control.Monad

main :: IO ()
main = do
  n   <- readLn
  soy <- replicateM n readLn
  putStrLn . unlines $ map (show . ceiling . (/400)) soy
