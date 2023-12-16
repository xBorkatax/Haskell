triangle perm n = do
    if n < 0
        then putStrLn "Invalid value!"
    else if perm == n + 1
        then return()
    else do
        putStrLn (replicate (n - perm) ' ' ++ replicate (perm - 1) '$' ++ "$" ++ replicate (perm - 1) '$' ++ replicate (n - perm) ' ')
        triangle (perm + 1) n

main = do
    n <- getLine
    let input = read n :: Int
    triangle 1 input