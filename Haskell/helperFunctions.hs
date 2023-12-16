module HelperFunctions where
    
customHead :: [a] -> a
customHead arr = arr!!0

customTail :: [a] -> [a]
customTail arr = drop 1 arr

loop loopData condition actualization body = do
    if not (condition loopData)
        then return()
    else do
        body loopData
        loop (actualization loopData) condition actualization body
        

repeatString str n =
    if n == 1
        then str
    else str ++ (repeatString str (n - 1))


readUntil command execution = do
    input <- getLine
    if input == command
        then do
            return()
    else do
        execution input
        readUntil command execution

splitString str delimiter = 
    if null str
        then []
    else
        if (take (length delimiter) str) == delimiter
            then (splitString(drop(length delimiter) str) delimiter)
        else[(customHead str)] ++ (splitString (customTail str) delimiter)

enumerate start end =
    if start > end
        then []
        else start : enumerate (start + 1) end

enumerate' end = enumerate 0 end