findFac :: (RealFrac a, Integral b, Floating a) => a -> a -> b -> a
findFac i a l =
  if ceiling a == l
    then i - 1
    else findFac (i + 1) (a + logBase 10 i) l

fac :: Int -> Int
fac 1   = 1
fac 2   = 2
fac 6   = 3
fac 24  = 4
fac 120 = 5
fac 720 = 6
fac _   = 0

main :: IO ()
main = do
  n <- getLine
  let b = length n

  if b < 4
    then print $ fac $ read n
    else print $ round $ findFac 1 0 b
