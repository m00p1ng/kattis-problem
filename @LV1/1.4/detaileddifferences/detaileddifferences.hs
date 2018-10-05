import Control.Monad

diff :: IO ()
diff = do
  a <- getLine
  b <- getLine
  let ans = map (\x -> if x then '.' else '*') eq
            where eq = zipWith (==) a b
  putStrLn $ unlines [a, b, ans]

main :: IO ()
main = do
  n <- readLn
  replicateM_ n diff
