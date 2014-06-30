-- Pack consecutive duplicates of list elements into sublists.
-- If a list contains repeated elements they should be placed in separate sublists.

encode :: (Show a, Eq a) => [a] -> [(Int, a)]
encode xs = 
    let encoder :: (Show a, Eq a) => a -> [(Int, a)] -> [(Int, a)]
        encoder x [] = [(1, x)]
        encoder x ((n, y):ys)
            | y == x = (n + 1, y):ys
            | otherwise = (1, x):(n, y):ys
    in foldr encoder [] xs

main = do
    let list = "aaaabccaadeeee"
    putStrLn $ "[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')] = " ++ (show $ encode list)
