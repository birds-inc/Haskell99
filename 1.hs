-- Find the last element of a list.

last' :: (Show a) => [a] -> a
last' (x:[]) = x
last' (x:xs) = last' xs


main = do
    let someList = [1,2,3,4]
    putStrLn $ "4 = " ++ (show $ last'  someList)
