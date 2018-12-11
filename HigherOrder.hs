-- HASKELL Exercise: Higher Order
-- based on CIS194 (Spring 2013) HW04 handout


module HigherOrder where
  

-- EXERCISE 1: WHOLEMEAL PROGRAMMING

{- Reimplement each of the following functions in a more idiomatic Haskell style. Use wholemeal programming practices, breaking each function into a pipeline of incremental transformations to an entire data structure. Name your functions fun1’ and fun2’ respectively. -}

fun1 :: [Integer] -> Integer
fun1 [] = 1
fun1 (x:xs)
  | even x    = (x - 2) * fun1 xs
  | otherwise = fun1 xs


fun1' :: [Integer] ->Integer
fun1' = product . map (\x -> x - 2) . filter even 



fun2 :: Integer -> Integer
fun2 1 = 0
fun2 n | even n    = n + fun2 (n `div` 2)
       | otherwise = fun2 (3 * n + 1)


fun2' :: Integer -> Integer
fun2' = sum
      . filter even
      . takeWhile (/= 1)
      . iterate (\n -> if even n then n `div` 2 else 3*n+1 ) 


-- EXERCISE 3: MORE FOLDS

{- 1. Implement a function xor :: [Bool] -> Bool which returns True if and only if there are an odd number of True values contained in the input list. It does not matter how many False values the input list contains. For example, xor [False, True, False] == True
xor [False, True, False, False, True] == False
Your solution must be implemented using a fold. -}

xor :: [Bool] -> Bool
xor xs = foldl (\acc x -> if x == True then not acc else acc) False  xs



{- 2. Implement map as a fold. That is, complete the definition map’ :: (a -> b) -> [a] -> [b]
map’ f = foldr ... in such a way that map’ behaves identically to the standard map function. -}

map' f = foldr (\y ys -> f y : ys) []


