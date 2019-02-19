module Unit4.Lesson21.Code21_2 where

import           System.Random

minDie :: Int
minDie = 1

maxDie :: Int
maxDie = 6

main21_2 :: IO ()
main21_2 = do
  dieRoll <- randomRIO (minDie, maxDie)
  putStrLn (show dieRoll)
