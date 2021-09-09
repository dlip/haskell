module Chapter02 where

average :: Foldable t => t Int -> Int
average ns = sum ns `div` length ns

-- comment

{-
comments!!
-}

n :: Int
n = a `div` length xs
    where
      a = 10
      xs = [1,2,3,4,5]

myLast :: Num a => [a] -> a
myLast xs = xs !! (length xs - 1)

myInit :: [a] -> [a]
myInit xs = reverse $ tail $ reverse xs