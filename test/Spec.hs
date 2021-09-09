import Chapter01
import Chapter02
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