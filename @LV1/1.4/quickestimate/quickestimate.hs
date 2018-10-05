main :: IO ()
main = do
  _ <- getLine
  interact $ unlines . map (show . length) . lines
