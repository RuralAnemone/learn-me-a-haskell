import System.IO (hFlush, stdout)

main :: IO ()
main = do
  putStrLn "hi"
  hFlush stdout
  n <- readLn :: IO Int
  putStrLn $ "The " ++ show n ++ "th prime is " ++ show (primes !! (n-1))

primes::[Integer]
primes = filterPrime [2..] where
  filterPrime (p:xs) =
    p : filterPrime [x | x <- xs, x `mod` p /= 0]