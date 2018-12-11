-- Haskell Exercise: Map and Filter


module MapFilterExercise where
  
import Data.Char (toUpper)
  

-- QUESTION 1:
--The type String is the same as [Char]. 
-- Define a function capitalises, of type String ! String, which takes a list of characters as its argument and returns the same list as its value except that each lower-case letter has been replaced by its upper-case equivalent. 
-- Thus, capitalises "Minority Report" = "MINORITY REPORT".

capitalise :: String -> String
capitalise l = map toUpper l



-- QUESTION 2:
-- Define a function squareall :: [Int] ! [Int] which takes a list of integers and produces a list of the squares of those integers. 
-- For example, squareall [6, 1, (-3)] = [36, 1, 9].

squareall :: [Int] -> [Int]
squareall [] = []
squareall l = map (^2) l
-- squareall (x:xs) = (x^2) : squareall xs



-- QUESTION 3:
-- Define a function nestedreverse which takes a list of strings as its argument and reverses each element of the list and then reverses the resulting list. 
-- Thus, nestedreverse ["in", "the", "end"] = ["dne", "eht", "ni"].

nestedreverse :: [String] -> [String]
nestedreverse [] = []
nestedreverse l = map reverse l



