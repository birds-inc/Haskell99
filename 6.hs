-- Find out whether a list is a palindrome.
-- A palindrome can be read forward or backward; e.g. (x a m a x).

palindrome :: (Eq a) => [a] -> Bool
palindrome [] = True
palindrome (_:[]) = True
palindrome (x:xs) = (x == last xs) && (palindrome $ init xs)

main = do
    putStrLn $ "False = " ++ (show $ palindrome [1,2,3,4])
    putStrLn $ "True = " ++ (show $ palindrome [1,2,3,2,1])
