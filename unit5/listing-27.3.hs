main :: IO ()
main = do
    print(fmap (+1) successfulRequest)
    print(fmap (+1) failedRequest)
    
    print((+1) <$> successfulRequest)
    print((+1) <$> failedRequest)

--instance Functor Maybe where
--    fmap func (Just n) = Just (func n)
--    fmap func Nothing = Nothing

successfulRequest :: Maybe Int
successfulRequest = Just 6

failedRequest :: Maybe Int
failedRequest = Nothing
