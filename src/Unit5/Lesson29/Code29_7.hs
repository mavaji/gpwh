module Unit5.Lesson29.Code29_7 where

main29_7 :: IO ()
main29_7 = do
  print (primesToN 32)

primesToN :: Integer -> [Integer]
primesToN n = filter isNotComposite twoThroughN
  where
    twoThroughN = [2 .. n]
    composite = pure (*) <*> twoThroughN <*> twoThroughN
    isNotComposite = not . (`elem` composite)
