module Unit2.Lesson14.Code14_9 where

main14_9 :: IO ()
main14_9 = do
  print [S1 .. S6]
  print [S2,S4 .. S6]
  print [S4 .. S6]
  print [S1 ..]

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

instance Enum SixSidedDie where
  toEnum 0 = S1
  toEnum 1 = S2
  toEnum 2 = S3
  toEnum 3 = S4
  toEnum 4 = S5
  toEnum 5 = S6
  toEnum _ = error "No such value"
  fromEnum S1 = 0
  fromEnum S2 = 1
  fromEnum S3 = 2
  fromEnum S4 = 3
  fromEnum S5 = 4
  fromEnum S6 = 5
