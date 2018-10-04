import           Data.List

main :: IO ()
main = do
    s <- getLine
    putStrLn $ if "ss" `isInfixOf` s then "hiss" else "no hiss"
