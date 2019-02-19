module Unit1.Lesson08.MyCycle where

mainMyCycle :: IO ()
mainMyCycle = do
  print (myCycle [1 .. 3])

myCycle (first:rest) = first : myCycle (rest ++ [first])
