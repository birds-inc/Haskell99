--  Reverse a list.

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:[]) = [x]
reverse' (x:xs) = reverse' xs ++ [x]

main = do
    let someList = [1,2,3,4]
    putStrLn $ "[4,3,2,1] = " ++ (show $ reverse' someList)
