quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x : xs) =
  let smallerSorted = quickSort $ filter (< x) xs
      biggerSorted = quickSort $ filter (>= x) xs
   in smallerSorted ++ [x] ++ biggerSorted
