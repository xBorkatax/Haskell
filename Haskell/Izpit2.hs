repeatChar :: Char -> Int -> String
repeatChar _ 0 = ""
repeatChar c n = c : repeatChar c (n-1)

triangle :: Int -> Int -> IO ()
triangle perm n = do
    if perm == n + 1
        then return()
    else do
        putStrLn (repeatChar ' ' (n - perm) ++ repeatChar '*' perm ++ "|" ++ repeatChar '*' perm ++ repeatChar ' ' (n - perm))
        triangle (perm + 1) n

main :: IO ()
main = do
    a <- getLine
    let n = read a :: Int 
    triangle 0 n