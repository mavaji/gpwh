module Unit1.Lesson09.MyReverse where

mainMyReverse :: IO ()
mainMyReverse = do
  print (myReverse [1, 2, 3])

rcons x y = y : x

myReverse xs = foldl rcons [] xs
