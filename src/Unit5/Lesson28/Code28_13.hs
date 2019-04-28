module Unit5.Lesson28.Code28_13 where

readInt :: IO Int
readInt = read <$> getLine

main28_13 :: IO ()
main28_13 = do
  putStrLn "Enter a username, gamerId and score"
  user <- User <$> getLine <*> readInt <*> readInt
  print user

data User = User
  { name    :: String
  , gamerId :: Int
  , score   :: Int
  } deriving (Show)
