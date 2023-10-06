removeNonUppercase :: [Char] -> [Char]
removeNonUppercase string = [ c | c <- string , c `elem` ['A'..'Z']]

factorial :: Integer -> Integer
factorial n = product [1..n]
-- hello I've decided to benchmark this
-- https://docs.google.com/spreadsheets/d/1o_9VSorpdDIxYOsgCKrlO8DOgIetDsxaCvNK4c1luIo/edit
