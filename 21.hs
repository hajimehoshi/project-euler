main :: IO ()
main = putStrLn $ show result

result :: Integer
result = sum $ map (\(a, b) -> a + b) $ amicablePairs
  where
    factorSums = map (sum . factors) [1..10000]
    amicablePairs = filter cond $ zipWith (,) [1..] factorSums
      where
        cond (n, s) = 2 <= s && s < (toInteger $ length factorSums) &&
                      n < s &&
                      factorSums !! (fromInteger (s - 1)) == n

factors :: Integer -> [Integer]
factors n = filter (\n' -> n `rem` n' == 0) [1..(n `div` 2)]
