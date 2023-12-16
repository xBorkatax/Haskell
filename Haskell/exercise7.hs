test  f1 f2 a = (f1 a) + (f2 a)

lowerLimit b = b - 10

upperLimit b = b + 10

main = do
    print (test lowerLimit upperLimit 5)
    