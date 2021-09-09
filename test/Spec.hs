import Lib
import Test.Hspec
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
  describe "Lib" $ do
    it "doubles ok" $ double 1 `shouldBe` 2
    it "listComprehension works" $ listComprehension `shouldBe` [1,2]
    it "sums" $ sum [1] `shouldBe` 1
    it "calculates products" $ prod [5, 10] `shouldBe` 50
