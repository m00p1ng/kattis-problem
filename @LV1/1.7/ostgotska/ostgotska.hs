import Data.List

main :: IO ()
main = do
  s <- words <$> getLine
  let ae = filter (isInfixOf "ae") s

  if 10 * length ae >= 4 * length s
    then putStrLn "dae ae ju traeligt va"
    else putStrLn "haer talar vi rikssvenska"
