nthFibonacci :: Int -> Int
nthFibonacci n | n < 0 = error "dumbass, input a positive integer"
nthFibonacci 0 = 0
nthFibonacci 1 = 1
nthFibonacci n = nthFibonacci (n-1) + nthFibonacci (n-2)