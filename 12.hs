import Data.List

main :: IO ()
main = putStrLn $ show result

result :: Integer
result = head $ dropWhile ((<500) . nDivisors) triangleNumbers

triangleNumbers :: [Integer]
triangleNumbers = scanl1 (+) [1..]
               
nDivisors :: Integer -> Integer
nDivisors num = product $ map ((+1) . toInteger . length) $ group $ factors num

factors :: Integer -> [Integer]
factors num = factors' num psuedoPrimes
  where
    factors' _    []            = error "invalid primes"
    factors' num' primes@(p:ps)
      | num' == 1         = []
      | num' < p * p      = [num']
      | num' `mod` p == 0 = p : factors' (num' `div` p) primes
      | otherwise         = factors' num' ps
    psuedoPrimes = 2:[3,5..]
