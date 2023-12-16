import HelperFunctions

readUntil command execution = do
    input <- getLine
    if input == command
        then do
            return()
    else do
        execution input
        readUntil command execution

printRepeatedString5Times string = print $ repeatString string 5

main = do
    readUntil "end" printRepeatedString5Times