module Unit1.Lesson07.SayAmount_v2 where

mainSayAmountV2 :: IO ()
mainSayAmountV2 = do
  print (sayAmount 12)
  print (sayAmount 1)

sayAmount 1 = "one"
sayAmount 2 = "two"
sayAmount _ = "a bunch"
