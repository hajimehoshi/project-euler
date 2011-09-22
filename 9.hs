main :: IO ()
main = putStrLn $ show result

result :: Integer
result = a * b * c
  where
    (a, b, c) = head pairs

        
pairs :: [(Integer, Integer, Integer)]
pairs = [(a, b, c) |
         a <- [1..1000],
         b <- [a..(1000 - a)],
         let c = 1000 - a - b,
         a * a + b * b == c * c]
