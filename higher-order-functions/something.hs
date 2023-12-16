largestDivisibleBy3829Under100000 :: (Integral a) => a
largestDivisibleBy3829Under100000 = head (filter p [100000, 99999 ..])
  where
    p x = x `mod` 3829 == 0

sumOfAllOddSquaresLT10000 :: (Integral a) => a
sumOfAllOddSquaresLT10000 = sum (takeWhile (< 10000) (filter odd (map (^ 2) [1 ..])))

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
  | n < 1 = error "bozo"
  | even n = n : chain (n `div` 2)
  | odd n = n : chain (n * 3 + 1)

chainsLongerThan15'iUnder100 :: Int
chainsLongerThan15'iUnder100 = length (filter (\xs -> length xs > 15) (map chain [1 .. 100]))