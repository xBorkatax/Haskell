
repeatString str n =
    if n == 1
        then str
    else str ++ (repeatString str (n - 1))

main = do
    print (repeatString "*" 5)
    print "*****"