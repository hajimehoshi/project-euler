import Data.Numbers.Primes

main :: IO ()
main = putStrLn $ show result

result :: Integer
result = sum $ takeWhile (<=2000000) $ primes
