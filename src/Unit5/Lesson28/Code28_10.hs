module Unit5.Lesson28.Code28_10 where

minOfThree :: (Ord a) => a -> a -> a -> a
minOfThree a b c = min a (min b c)

readInt :: IO Int
readInt = read <$> getLine

minOfInts :: IO Int
minOfInts = minOfThree <$> readInt <*> readInt <*> readInt

main28_10 :: IO ()
main28_10 = do
  putStrLn "Enter three numbers"
  minInt <- minOfInts
  putStrLn (show minInt ++ " is the smallest")
