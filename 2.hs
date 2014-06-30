-- Find the last but one element of a list.

lastButOne' :: (Show a) => [a] -> a
lastButOne' (x:_:[]) = x
lastButOne' (_:_:xs) = lastButOne' xs

main = do
    let someList = [1,2,3,4]
    putStrLn $ "3 = " ++ (show $ lastButOne'  someList)
