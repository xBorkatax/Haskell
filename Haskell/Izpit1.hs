import Data.Char (isDigit)
main = do
    code <- getLine
    putStrLn (checkCode code)

isValid :: String -> Bool
isValid [a,b,c,d] = (a == d) && (b == c)
isValid _ = False

checkCode code = 
    if length code /= 4 || not (all isDigit code) 
        then "Invalid code"
    else if isValid code
        then "Unlock"
    else "Not unlock"