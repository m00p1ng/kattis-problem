import Data.Char
import Data.Bits

findCoor :: Int -> Int -> String -> Int -> Int -> (Int, Int)
findCoor sz i (c:cs) x y = findCoor sz (i+1) cs nx ny
  where 
    n = digitToInt c
    nx = x .|. if n == 1 || n == 3 then shift 1 (sz - i) else x
    ny = y .|. if n == 2 || n == 3 then shift 1 (sz - i) else y
findCoor _ _ _ x y = (x, y)

main :: IO ()
main = do
  buff <- getLine
  let 
    s = length buff
    ans = findCoor (s -1) 0 buff 0 0

  putStrLn . unwords $ map show [s, fst ans, snd ans]