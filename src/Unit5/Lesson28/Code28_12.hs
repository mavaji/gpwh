module Unit5.Lesson28.Code28_12 where

serverUsername :: Maybe String
serverUsername = Just "Sue"

serverGamerId :: Maybe Int
serverGamerId = Just 1337

serverScore :: Maybe Int
serverScore = Just 9001

main28_12 :: IO ()
main28_12 = do
  print (User <$> serverUsername <*> serverGamerId <*> serverScore)

data User = User
  { name    :: String
  , gamerId :: Int
  , score   :: Int
  } deriving (Show)
