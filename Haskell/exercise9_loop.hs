-- import HelperFunctions
loop loopData condition actualization body = do
    if not (condition loopData)
        then return()
    else do
        body loopData
        loop (actualization loopData) condition actualization body

isLowerThan10 a = a < 10
increment a = a + 1
printData a = print a

main = do
    loop 1 isLowerThan10 increment printData