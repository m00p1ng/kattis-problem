import Control.Monad

findHeight :: Floating a => a -> a -> a
findHeight a b = ((a + b) - sqrt ((a + b) ^ 2 - 3 * a * b)) / 6

maxVolumn :: Floating a => a -> a -> a
maxVolumn a b = m_h * (a - 2 * m_h) * (b - 2 * m_h)
                where m_h = findHeight a b

main :: IO ()
main = do
  n <- readLn
  replicateM_ n $ do
    [a, b] <- map read . words <$> getLine
    print $ maxVolumn a b
