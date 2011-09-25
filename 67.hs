main :: IO ()
main = do
  r <- result
  putStrLn $ show $ r

result :: IO Integer
result = do
  str <- readFile "triangle.txt"
  return $ maxInTriangle $ mainNumbers str

maxInTriangle :: [[Integer]] -> Integer
maxInTriangle = head . foldr1 step
  where
    step :: [Integer] -> [Integer] -> [Integer]
    step []     ys         = ys
    step (x:xs) (y1:y2:ys) = (x + max y1 y2) : (step xs (y2:ys))
    step _      _          = undefined

mainNumbers :: String -> [[Integer]]
mainNumbers = map (map read . words) . lines
