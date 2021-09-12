module Chapter04 where

halve :: [a] -> ([a],[a])
halve xs = splitAt (length xs `div` 2) xs

thirda :: [a] -> a
thirda xs = head $ tail $ tail xs

thirdb :: [a] -> a
thirdb xs = if length xs >= 3 then xs !! 2 else error "Invalid length"

thirdc :: [a] -> a
thirdc (x:y:z:xs) = z
thirdc _ = error "Invalid length"

safetaila :: [a] -> [a]
safetaila xs = if null xs then xs else tail xs

safetailb :: [a] -> [a]
safetailb xs
  | null xs = xs
  | otherwise = tail xs

ora :: Bool -> Bool -> Bool
ora True False = True
ora True True = True
ora False False = False
ora False True = True

orb :: Bool -> Bool -> Bool
orb True _ = True
orb False False = False
orb False True = True

orc :: Bool -> Bool -> Bool
orc True _ = True
orc False False = False
orc _ True = True

ord :: Bool -> Bool -> Bool
ord True _ = True
ord _ a = a

and' :: Bool -> Bool -> Bool
and' x y  = if x then
              if y then True
                else False
            else False

mult :: Int -> Int -> Int -> Int
mult  = (\x y z -> x*y*z)

luhnDouble :: Int -> Int
luhnDouble x = if double > 9 then double - 9 else double
             where
               double = x * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = (luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0