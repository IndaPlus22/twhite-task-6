fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1 
fib n = (n - 1) + (n - 2)

main :: IO ()
main = do 
    let res = fib 13
    print res

    