module Unit2.Lesson14.Code14_2 where

main14_2 :: IO ()
main14_2 = do
  print S1
  print S2
  print S3
  print S4

data SixSidedDie
  = S1
  | S2
  | S3
  | S4
  | S5
  | S6
  deriving (Show)
