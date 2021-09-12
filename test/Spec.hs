import Chapter01
import Chapter02
import Chapter04
import Test.Hspec
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
  describe "Chapter01" $ do
    it "doubles ok" $ double 1 `shouldBe` 2
    it "listComprehension works" $ listComprehension `shouldBe` [1,2]
    it "sums" $ sum [1] `shouldBe` 1
    it "calculates products" $ prod [5, 10] `shouldBe` 50
  describe "Chapter02" $ do
    it "selects from list" $ [1,2,3] !! 1 `shouldBe` 2
    it "appends list" $ [1,2,3] ++ [4,5] `shouldBe` [1,2,3,4,5]
    it "calculates averages" $ average [9,8,7] `shouldBe` 8
    it "n is 2" $ n `shouldBe` 2
    it "gets last" $ myLast [1,2,3] `shouldBe` 3
    it "my init" $ myInit [1,2,3] `shouldBe` [1,2]
  describe "Chapter04" $ do
    it "halves lists" $ halve [1,2,3,4,5,6] `shouldBe` ([1,2,3],[4,5,6])
    it "returns third element a" $ thirda [1,2,3,4,5,6] `shouldBe` 3
    it "returns third element b" $ thirdb [1,2,3,4,5,6] `shouldBe` 3
    it "returns third element c" $ thirdc [1,2,3,4,5,6] `shouldBe` 3
    it "returns tail safely a" $ safetaila [1,2,3] `shouldBe` [2,3]
    it "returns tail safely a" $ safetaila ([] :: [Int]) `shouldBe` []
    it "returns tail safely b" $ safetailb [1,2,3] `shouldBe` [2,3]
    it "returns tail safely b" $ safetailb ([] :: [Int]) `shouldBe` []
    it "ors correctly a" $ ora True False `shouldBe` True
    it "ors correctly b" $ orb True False `shouldBe` True
    it "ors correctly c" $ orc True False `shouldBe` True
    it "ors correctly d" $ ord True False `shouldBe` True
    it "ands correctly d" $ and' True True `shouldBe` True
    it "ands correctly d" $ and' True False `shouldBe` False
    it "multiplies correctly" $ mult 1 2 3 `shouldBe` 6
    it "luhnDoubles correctly" $ luhnDouble 3 `shouldBe` 6
    it "luhnDoubles correctly" $ luhnDouble 6 `shouldBe` 3
    it "luhn valid card" $ luhn 1 7 8 4 `shouldBe` True
    it "luhn invalid card" $ luhn 4 7 8 3 `shouldBe` False