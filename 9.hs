-- Pack consecutive duplicates of list elements into sublists.
-- If a list contains repeated elements they should be placed in separate sublists.

pack :: (Show a, Eq a) => [a] -> [[a]]
pack xs = 
    let packer :: (Show a, Eq a) => [[a]] -> a -> [[a]]
        packer [] x = [[x]]
        packer (ys:yss) x
            | head ys == x = [x:ys] ++ yss
            | otherwise = [x]:ys:yss
    in reverse $ foldl packer [] xs

main = do
    let list = "aaaabccaadeeee"
    putStrLn $ "[\"aaaa\",\"b\",\"cc\",\"aa\",\"d\",\"eeee\"] = " ++ (show $ pack list)
