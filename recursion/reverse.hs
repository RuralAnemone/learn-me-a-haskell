reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

main :: IO()
main = do
    let testArray = ['A'..'Z'] in putStrLn (reverse' testArray)