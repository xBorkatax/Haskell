import HelperFunctions

enumerate start end =
    if start > end
        then []
        else start : enumerate (start + 1) end

enumerate' end = enumerate 0 end

main = do 
    print $ enumerate' 10