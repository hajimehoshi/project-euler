main :: IO ()
main = putStrLn $ show result

result :: Integer
result = sum $ map (toInteger . length . notSpaceOrHyphen . english) [1..1000]
  where
    notSpaceOrHyphen = filter (\x -> x /= ' ' && x /= '-')

english :: Integer -> String
english 0    = ""
english 1    = "one"
english 2    = "two"
english 3    = "three"
english 4    = "four"
english 5    = "five"
english 6    = "six"
english 7    = "seven"
english 8    = "eight"
english 9    = "nine"
english 10   = "ten"
english 11   = "eleven"
english 12   = "twelve"
english 13   = "thirteen"
english 14   = "fourteen"
english 15   = "fifteen"
english 16   = "sixteen"
english 17   = "seventeen"
english 18   = "eighteen"
english 19   = "nineteen"
english 20   = "twenty"
english 30   = "thirty"
english 40   = "forty"
english 50   = "fifty"
english 60   = "sixty"
english 70   = "seventy"
english 80   = "eighty"
english 90   = "ninety"
english 1000 = "one thousand"
english n
  | 100 <= n && n `rem` 100 == 0 = english digit3 ++ " hundred"
  | 21 <= n && n <= 99           = english (digit2 * 10) ++ "-" ++ english digit1
  | 101 <= n && n <= 999         = english (digit3 * 100) ++ " and " ++
                                   english (digit2 * 10 + digit1)
  | otherwise                    = undefined
  where
    digit1 = n `rem` 10
    digit2 = (n `div` 10) `rem` 10
    digit3 = (n `div` 100) `rem` 10
