printHelloWorld = print "Hello World!"


main :: IO String
main = do

    putStrLn "What is your name?"
    name <- getLine
    putStrLn ("Oh, hi " ++ name)