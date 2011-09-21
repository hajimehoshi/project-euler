main :: IO ()
main = putStrLn $ show result

result :: Integer
result = maximum nums
  where
    nums = [n | x <- [100..999], y <- [y' | y' <- [100..999], x <= y'], let n = x * y, palindrome n]

palindrome :: Integer -> Bool
palindrome num = palindrome' $ split num
  where
    palindrome' digits = digits == reverse digits

split :: Integer -> [Integer]
split num
  | num < 0   = error "num must be positive"
  | num <= 9  = [num]
  | otherwise = split (num `div` 10) ++ [num `mod` 10]
