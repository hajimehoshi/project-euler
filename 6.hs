main :: IO ()
main = putStrLn $ show result

result :: Integer
result = (square $ sum [1..100]) - (sum $ map square [1..100])
  where
    square = (^(2 :: Integer))
