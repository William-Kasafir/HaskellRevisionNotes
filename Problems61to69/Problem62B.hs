data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

tree4 = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty))
                 (Branch 2 Empty Empty)

atLevel :: Tree a -> Int -> [a]
atLevel Empty 1           = []
atLevel (Branch x l r) 1  = [x]
atLevel Empty n           = []
atLevel (Branch x l r) n  = (atLevel l (n-1)) ++ (atLevel r (n-1))
