repeatString str n = 
    if n == 0
    then " "
    else str ++ (repeatString str (n-1))

main = do
    print (repeatString "5" 3) 