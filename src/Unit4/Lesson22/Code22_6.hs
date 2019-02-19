module Unit4.Lesson22.Code22_6 where

import           Control.Monad
import           System.Environment

main22_6 :: IO ()
main22_6 = do
  args <- getArgs
  let linesToRead =
        if length args > 0
          then read (head args)
          else 0 :: Int
  numbers <- replicateM linesToRead getLine
  let ints = map read numbers :: [Int]
  print (sum ints)
