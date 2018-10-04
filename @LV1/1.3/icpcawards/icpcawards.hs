import qualified Data.Set                      as Set

solve :: Set.Set String -> [String] -> Int -> IO [String]
solve _  l 0 = pure $ take 12 l
solve uv l n = do
  [u, t] <- fmap words getLine

  let (new_uv, new_l) = if Set.member u uv
        then (uv, l)
        else (Set.insert u uv, l ++ [u ++ " " ++ t])

  solve new_uv new_l (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  l <- solve Set.empty [] n

  putStrLn $ unlines l
