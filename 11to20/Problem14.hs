dupli :: [a] -> [a]
dupli []     = []
dupli (x:[]) = [x, x]
dupli (x:xs) = [x, x] ++ dupli xs
