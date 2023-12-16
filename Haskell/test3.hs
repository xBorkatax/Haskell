main = do
    putStrLn "Моля, въведете радиуса на окръжността:"
    input <- getLine
    let radius = read input :: Double
    let area = pi * radius * radius
    putStrLn ("Лицето на кръга с радиус " ++ show radius ++ " е: " ++ show area)