main :: IO ()
main = putStrLn $ show result

result :: Integer
result = last $ factors mainNum

mainNum :: Integer
mainNum = 600851475143

factors :: Integer -> [Integer]
factors num = factors' num psuedoPrimes
  where
    factors' num' primes@(p:ps)
      | num' == 1         = []
      | num' < p * p      = [num']
      | num' `mod` p == 0 = p : factors' (num' `div` p) primes
      | otherwise        = factors' num' ps
    factors' _ [] = error "invalid primes"
    psuedoPrimes = 2:[3,5..]
