multiply :: Int -> (Int -> Int)
multiply a b = a * b

multiplyWithThree :: Int -> Int
multiplyWithThree a = 3 * a

main :: IO ()
main = do
    print $ multiply 3 5
    -- becomes
    print $ multiplyWithThree 5
