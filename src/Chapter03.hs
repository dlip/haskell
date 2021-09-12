module Chapter03 where

bools :: [Bool]
bools = [True, False]

nums :: [[Int]]
nums = [[1,2,3]]

add :: Int -> Int -> Int -> Int
add a b c = a + b + c

copy :: a -> (a,a)
copy a = (a,a)

apply :: (a -> b) -> a -> b
apply f a = f a

second :: [a] -> a
second xs = head (tail xs)

swap :: (x,y) -> (y,x)
swap (x,y) = (y,x)

pair :: x -> y -> (x,y)
pair x y = (x,y)

double :: Num x => x -> x
double x = x*2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (f -> f) -> f -> f
twice f x = f (f x)