add :: Integer -> Integer -> Integer 
add a b = a + b

main :: IO ()
main = do
    let neshto = 5
    let drugoNeshto = 10
    print (add neshto drugoNeshto)