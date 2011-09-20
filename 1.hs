main :: IO ()
main = putStrLn $ show result
  where
    result = sum nums

nums :: [Int]
nums = [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]
