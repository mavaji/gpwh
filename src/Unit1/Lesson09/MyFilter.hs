module Unit1.Lesson09.MyFilter where

mainMyFilter :: IO ()
mainMyFilter = do
  print (myFilter (\x -> x `mod` 3 == 0) [1, 2, 3, 4, 5, 6])

myFilter test [] = []
myFilter test (x:xs) =
  if test x
    then x : myFilter test xs
    else myFilter test xs
