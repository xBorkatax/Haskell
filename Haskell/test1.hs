main = do 
    putStrLn "Put ur name"
    name <- getLine
    secondName <- getLine
    putStrLn (name ++ " " ++ secondName)