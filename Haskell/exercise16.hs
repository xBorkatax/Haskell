import HelperFunctions

customMap list mapper =
    if null list
        then []
    else (mapper (customHead list)) : (customMap (customTail list) mapper)

umnojiPo :: Integer -> Integer
umnojiPo a = a *2

main = do
    let list = [1, 2, 3, 4, 5]
    print (customMap list umnojiPo) 