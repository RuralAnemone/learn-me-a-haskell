stockValues :: [(Double, Integer, Integer, Integer)]
stockValues = [(994.4, 2008, 9, 1), (995.2, 2008, 9, 2), (999.2, 2008, 9, 3), (1001.4, 2008, 9, 4), (998.3, 2008, 9, 5)]

-- want to know:
-- when the stock value first exceeded $1000

firstExceeded1000 :: (Integer, Integer, Integer)
firstExceeded1000 = (\(val, y, m, d) -> (y, m, d)) $ head $ dropWhile (\(val, y, m, d) -> val < 1000) stockValues