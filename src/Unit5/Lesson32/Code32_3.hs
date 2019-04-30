module Unit5.Lesson32.Code32_3 where

import           Control.Monad

main32_3 :: IO ()
main32_3 = do
  print evenSquares
  print (powersOfTwo 4)
  print (powersOfTwoAndThree 4)
  print (allEvenOdds 4)
  print (evensGuard 4)

evenSquares :: [Int]
evenSquares = do
  n <- [0 .. 9]
  let nSquared = n ^ 2
  guard (even nSquared)
  return nSquared

powersOfTwo :: Int -> [Int]
powersOfTwo n = [2 ^ value | value <- [1 .. n]]

powersOfTwoAndThree :: Int -> [(Int, Int)]
powersOfTwoAndThree n =
  [(powersOfTwo, powersOfThree) | value <- [1 .. n], let powersOfTwo = 2 ^ value, let powersOfThree = 3 ^ value]

allEvenOdds :: Int -> [(Int, Int)]
allEvenOdds n = [(evenValue, oddValue) | evenValue <- [2,4 .. n], oddValue <- [1,3 .. n]]

evensGuard :: Int -> [Int]
evensGuard n = [value | value <- [1 .. n], even value]
