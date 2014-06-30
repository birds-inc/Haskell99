-- Eliminate consecutive duplicates of list elements.

compress :: (Show a, Eq a) => [a] -> [a]
compress [] = []
compress (x:[]) = [x]
compress (x:xs)
    | x == head xs = compress xs
    | otherwise = x : compress xs

main = do
    let list = "aaaabccaadeeee"
    putStrLn $ "\"abcade\" = " ++ (show $ compress list)
