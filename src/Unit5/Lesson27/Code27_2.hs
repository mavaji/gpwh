module Unit5.Lesson27.Code27_2 where

main27_2 :: IO ()
main27_2 = do
    print(incMaybe successfulRequest)
    print(incMaybe failedRequest)

incMaybe :: Maybe Int -> Maybe Int
incMaybe (Just n) = Just (n + 1)
incMaybe Nothing = Nothing

successfulRequest :: Maybe Int
successfulRequest = Just 6

failedRequest :: Maybe Int
failedRequest = Nothing
