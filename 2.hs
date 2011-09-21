main :: IO ()
main = putStrLn $ show result
  where
    result = sum $ filter even $ takeWhile (< 4000000) fibs

fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)
