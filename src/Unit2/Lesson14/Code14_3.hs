module Unit2.Lesson14.Code14_3 where

main14_3 :: IO ()
main14_3 = do
  print S1
  print S2
  print S6

data SixSidedDie
  = S1
  | S2
  | S3
  | S4
  | S5
  | S6

instance Show SixSidedDie where
  show S1 = "one"
  show S2 = "two"
  show S3 = "three"
  show S4 = "four"
  show S5 = "five"
  show S6 = "six"
