functorial n =
    if n == 2
        then n
    else n * functorial (n - 1)

main = do
    print (functorial 5)