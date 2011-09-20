fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

main :: IO ()
main = putStrLn $ show $ sum $ filter even $ takeWhile (\x -> x < 4000000) fibs
