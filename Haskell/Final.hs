repeatString :: String -> Int -> String
repeatString s n = concat (map (replicate n) s)

main = do
    word <- getLine
    repeat <- readLn
    putStrLn $ repeatString word repeat