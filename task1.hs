-- Опишіть функцію , яка шукає елемент , який в даному списку зустрічається два рази поспіль.

searchPair (head:list) = if (searchNumber head list) then (Just head) else (searchPair list)
searchPair [] = Nothing

searchNumber :: Integer -> [Integer] -> Bool
searchNumber target (head:list) = if target == head then True else (searchNumber target list)
searchNumber target [] = False


main = print $ searchPair [2, 3, 5, 2]
