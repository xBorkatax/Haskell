loop index endIndex = do
if index == endIndex
    then return()
else do
    print index
    loop (index + 1) endIndex


repeatString repeatStr count = do
    if count == 0
        then ""
    else do
        repeatStr ++ repeatString repeatStr (count - 1)