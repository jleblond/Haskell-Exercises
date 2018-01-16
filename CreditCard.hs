-- HASKELL Exercise #1: Lists and Recursion

-- Credit Card Exercise loosely based on CIS194 (Spring 2013) HW01 handout


module CreditCard where
  


-- STEP 1: 
-- Double the value of every second digit beginning from the right.
-- That is, the last digit is unchanged; the second-to-last digit is doubled; the third-to-last digit is unchanged; and so on. 
-- For example,[1,3,8,6] becomes [2,3,16,6].


-- length of list converted from Int to Integer
integerLengthList :: [Integer] -> Integer
integerLengthList [] = 0
integerLengthList l = toInteger (length l)

-- create a reversed list of n elements
reverseList :: Integer -> [Integer]
reverseList n = reverse [1..n]
  
-- double every 2nd element from the right
doubleSndDigit :: [(Integer, Integer)] -> [Integer]
doubleSndDigit [] = []
doubleSndDigit ((a1,a2):xss) 
  | even a2 = a1*2 : doubleSndDigit xss
  | otherwise = a1: doubleSndDigit xss




-- STEP 2:
-- Add the digits of the doubled values and the undoubled digits from the original number.
-- For example, [2,3,16,6] becomes 2+3+1+6+6 = 18.


-- decomposes numbers >=10 into a list of digits
decomposeNumber :: Integer -> [Integer]
decomposeNumber a = 
  case a>= 10 of
  True -> decomposeNumber (a `div` 10) ++ [a `mod` 10]
  False -> [a]
  
-- sum all digits (0-9) of a list 
-- using decomposition function for numbers >= 10
sumCustom :: [Integer] -> Integer
sumCustom [] = 0
sumCustom [a] = a
sumCustom (x:xs) =  
  if x >= 10
  then sumCustom(decomposeNumber x) + sumCustom xs
  else x + sumCustom xs




-- STEP 3:
-- Calculate the remainder when the sum is divided by 10. For the above example, the remainder would be 8.
-- If the result equals 0, then the number is valid.
validateSum :: Integer -> Bool
validateSum a =
  if (a `mod` 10) == 0
  then True
  else False
  





