module Unit4.Lesson22.Code22_11 where

main22_11 :: IO ()
main22_11 = do
  userInput <- getContents
  let numbers = toInts userInput
  print (sum numbers)

toInts :: String -> [Int]
toInts = map read . lines
