main :: IO ()
main = putStrLn $ show result

result :: Integer
result = foldr1 lcm [1..20]
