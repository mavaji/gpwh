module Unit5.Lesson27.Code27_3 where

main27_3 :: IO ()
main27_3 = do
  print (fmap (+ 1) successfulRequest)
  print (fmap (+ 1) failedRequest)
  print ((+ 1) <$> successfulRequest)
  print ((+ 1) <$> failedRequest)

successfulRequest :: Maybe Int
successfulRequest = Just 6

failedRequest :: Maybe Int
failedRequest = Nothing
