module Unit1.Lesson08.MyLength where

mainMyLength :: IO ()
mainMyLength = do
  print (myLength "asdf")
  print (myLength [1, 2, 4, 5])

myLength []     = 0
myLength (x:xs) = 1 + myLength xs
