import Data.Char (digitToInt)

main :: IO ()
main = putStrLn $ show result

result :: Integer
result = sum $ map (toInteger . digitToInt) $ show $ factorial 100

factorial :: Integer -> Integer
factorial n = product [1..n]
