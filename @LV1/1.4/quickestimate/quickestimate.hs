main = do
    getLine
    interact (unlines . map (show . length) . lines)
