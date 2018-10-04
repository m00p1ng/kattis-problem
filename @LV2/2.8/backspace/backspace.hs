-- +----------+
-- | TOO SLOW |
-- +----------+
solve :: String -> String -> String
solve [] out = out
solve (s : ss) out | s == '<', len > 0  = solve ss (init out)
                   | s == '<', len == 0 = solve ss out
                   | otherwise          = solve ss (out ++ [s])
  where len = length out

main :: IO ()
main = do
  line <- getLine
  putStrLn $ solve line ""
