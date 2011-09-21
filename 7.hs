import Data.Numbers.Primes

main :: IO ()
main = putStrLn $ show result

result :: Integer
result = primes !! 10000
