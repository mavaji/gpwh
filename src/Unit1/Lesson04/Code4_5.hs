module Unit1.Lesson04.Code4_5 where

import           Data.List

main4_5 :: IO ()
main4_5 = do
  print (sortBy compareLastNames names)

names = [("Ian", "Curtis"), ("Bernard", "Sumner"), ("Peter", "Hook"), ("Stephen", "Morris")]

compareLastNames name1 name2 =
  if lastName1 > lastName2
    then GT
    else if lastName1 < lastName2
           then LT
           else EQ
  where
    lastName1 = snd name1
    lastName2 = snd name2
