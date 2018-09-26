import Data.List

main = do
    s <- getLine
    putStrLn $ if "ss" `isInfixOf` s then "hiss" else "no hiss"