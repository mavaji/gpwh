module Unit5.Lesson29.Code29_11 where

readInt :: IO Int
readInt = read <$> getLine

main29_11 :: IO ()
main29_11 = do
  print (length testData)
  print (take 3 testData)

testData :: [User]
testData = pure User <*> testNames <*> testIds <*> testScores

testNames :: [String]
testNames = ["John Smith", "Robert'); DROP TABLE Students;--", "Christina NULL", "Randall Munroe"]

testIds :: [Int]
testIds = [1337, 0123, 999999]

testScores :: [Int]
testScores = [0, 100000, -99999]

data User = User
  { name    :: String
  , gamerId :: Int
  , score   :: Int
  } deriving (Show)
