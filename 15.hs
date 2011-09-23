main :: IO ()
main = putStrLn $ show result

result :: Integer
result = 40 `combination` 20

combination :: Integer -> Integer -> Integer
combination n r = (factorial n) `div` ((factorial r) * (factorial (n-r)))
  
factorial :: Integer -> Integer
factorial 0 = 1
factorial 1 = 1
factorial n = n * (factorial (n-1))
