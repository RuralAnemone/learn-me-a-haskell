quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x : xs) =
  let smallerSorted = quickSort [a | a <- xs, a < x]
      biggerSorted = quickSort [a | a <- xs, a >= x]
   in smallerSorted ++ [x] ++ biggerSorted
