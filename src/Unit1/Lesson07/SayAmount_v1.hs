module Unit1.Lesson07.SayAmount_v1 where

mainSayAmountV1 :: IO ()
mainSayAmountV1 = do
  print (sayAmount 12)
  print (sayAmount 1)

sayAmount n =
  case n of
    1 -> "One"
    2 -> "Two"
    _ -> "a bunch"
