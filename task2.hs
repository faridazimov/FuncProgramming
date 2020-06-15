-- Реалізувати алгоритм сортування insert sort.

sort :: Ord a => [a] -> [a]
sort xs = inserts xs []

inserts :: Ord a => [a] -> [a] -> [a]
inserts [] r = r
inserts (x:xs) r = inserts xs (insert x r)

insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys) =
  if x <= y
    then x : y : ys
    else y : insert x ys

main = do
  let input = [7, 13, 11, 16, 9, 12, 4, 8, 10, 20, 6, 3, 19, 5, 18, 2, 1]
  print $ sort input
  let input = [8, 1, 16, 12, 4, 17, 9, 7, 3, 2, 19, 11, 5, 20, 15, 14, 6]
  print $ sort input
