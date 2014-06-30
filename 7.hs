-- Flatten a nested list structure.
-- A palindrome can be read forward or backward; e.g. (x a m a x).

data NestedList a = Elem a | List [NestedList a]

flatten :: (Show a) => NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List (x:[])) = flatten x
flatten (List (x:xs)) = flatten x ++ flatten (List xs)

main = do
    let list = List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]
    putStrLn $ "[1,2,3,4,5] = " ++ (show $ flatten list)
