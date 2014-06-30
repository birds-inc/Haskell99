--  Find the K'th element of a list. The first element in the list is number 1.

index :: (Show a) => [a] -> Int -> a
index (x:_) 1 = x
index (_:xs) n = index xs (n - 1)

main = do
    let someList = [1,2,3,4]
    putStrLn $ "1 = " ++ (show $ index someList 1)
    putStrLn $ "2 = " ++ (show $ index someList 2)
    putStrLn $ "3 = " ++ (show $ index someList 3)
