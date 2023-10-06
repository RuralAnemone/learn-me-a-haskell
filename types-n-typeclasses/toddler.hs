removeNonUppercase :: [Char] -> [Char]
removeNonUppercase string = [ c | c <- string , c `elem` ['A'..'Z']]

factorial :: Integer -> Integer
factorial n = product [1..n]