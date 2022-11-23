quicksort [] = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser = filter (< p) xs
        greater = filter (>= p) xs


quicksortR [] = []
quicksortR (p:xs) = (quicksortR greater) ++ [p] ++ (quicksortR lesser)
    where
        lesser = filter (< p) xs
        greater = filter (>= p) xs