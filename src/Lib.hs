module Lib where

double :: Num a => a -> a
double x = x * 2

listComprehension :: [Integer]
listComprehension = [a | a <- [1,2,3], a < 3]

prod :: Num p => [p] -> p
prod [] = 1
prod (x:xs) = x * (prod xs)