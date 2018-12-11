-- Main.hs


--double :: Int -> Int
--double x = x + x
--    
-- 
--chain :: Integer -> [Integer]
--chain 1 = [1]
--chain n
--  | even n = n : chain (n `div` 2)
--  | odd n = n : chain (n*3 + 1)
--
--
--
--
--


-- EXERCISE 3: MORE FOLDS

 xor :: [Bool] -> Bool
 xor xs = foldl (\acc x -> if x == True then not acc else acc) False  xs