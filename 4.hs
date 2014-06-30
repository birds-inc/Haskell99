--  Find the number of elements of a list.


length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

main = do
    let someList = [1,2,3,4]
    putStrLn $ "4 = " ++ (show $ length' someList)
