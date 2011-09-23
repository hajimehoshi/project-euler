import Data.Char (digitToInt)

main :: IO ()
main = putStrLn $ show result

result :: Integer
result = sum $ map (toInteger . digitToInt) $ show $ num
  where
    num :: Integer
    num = 2 ^ (1000 :: Integer)
