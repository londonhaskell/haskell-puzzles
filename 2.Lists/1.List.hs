module ListPuzzles where

import Prelude hiding (map, (++), reverse)

-- (#) - Write the append operator, which takes two lists and returns the 
-- first list followed by the second.
(++) :: [a] -> [a] -> [a]
(++) = undefined

-- (#) - Write reverse, which reverses a list of integers
reverse :: [Integer] -> [Integer]
reverse = undefined

-- (#) - Write map, which take a function and applies it to every element of
-- a  list and returning the output as a list.
map :: (a -> b) -> [a] -> [b]
map = undefined

-- (#) - Try reverse on different length lists. Try [1..1000] and then 
-- get longer by a factor of two each time. Use the following GHCi command
-- to see the performance:
--     :set +s
-- and the following code to test:
--     length (reverse [1..1000])

-- (#) - Write reverse' in terms of foldr
-- In this case foldr the parameters will be:
--     function :: Integer -> [Integer] -> [Integer]
--     accumulator :: [Integer]
-- where the parameters are in the order they appear in the list
reverse' :: [Integer] -> [Integer]
reverse' = undefined

-- (#) - Measure the performance of reverse' 

-- (#) - Write reverse'' in terms of foldl
-- In this case foldl the parameters will be:
--     function :: [Integer] -> Integer -> [Integer]
--     accumulator :: [Integer]
-- where the parameters are in the opposite order to how they appear the list
reverse'' :: [Integer] -> [Integer]
reverse'' = undefined

-- (#) - Measure the performance of reverse' 

-- (#) - Measure the performance of Prelude.reverse 
