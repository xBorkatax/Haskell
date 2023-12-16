main :: IO ()
main = do
    putStrLn "Моля, въведете първото число:"
    num1 <- getLine
    putStrLn "Моля, въведете второто число:"
    num2 <- getLine
    let result = (read num1 :: Int) * (read num2 :: Int)
    putStrLn ("Резултатът от умножението на двата числа е: " ++ show result)
