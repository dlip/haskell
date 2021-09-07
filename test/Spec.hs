import Lib

main :: IO ()
main = do
  putStrLn ""
  putStr "double "
  putStrLn $ if double 1 == 2 then "OK" else "FAIL!"
  putStr "listComprehension "
  putStrLn $ if listComprehension == [1,2] then "OK" else "FAIL!"
  return ()