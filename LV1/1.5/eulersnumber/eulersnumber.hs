fac :: (Eq p, Num p) => p -> p
fac 0 = 1
fac 1 = 1
fac n = n * fac (n - 1)

euler :: (Fractional a, Eq a, Enum a) => a -> a
euler n = sum $ map (\x -> 1.0 / fac x) [0 .. n]

main :: IO ()
main = do
  n <- readLn
  print $ euler n
