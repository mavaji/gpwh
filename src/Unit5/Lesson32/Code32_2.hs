module Unit5.Lesson32.Code32_2 where

main32_2 :: IO ()
main32_2 = do
  print (powersOfTwoAndThree 4)

powersOfTwoAndThree :: Int -> [(Int, Int)]
powersOfTwoAndThree n = do
  value <- [1 .. n]
  let powersOfTwo = 2 ^ value
  let powersOfThree = 3 ^ value
  return (powersOfTwo, powersOfThree)
