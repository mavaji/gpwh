module Unit5.Lesson27.Code27_14 where

import qualified Data.Map as Map

main27_14 :: IO()
main27_14 = do
    print (Map.lookup 1 htmlPartsDB)

htmlPartsDB :: Map.Map Int Html
htmlPartsDB = renderHtml <$> partsDB

partHtml :: Maybe Html
partHtml = renderHtml <$> partVal

partVal :: Maybe RobotPart
partVal = Map.lookup 1 partsDB

partsDB :: Map.Map Int RobotPart
partsDB = Map.fromList keyVals
    where keys = [1, 2, 3]
          vals = [leftArm, rightArm, robotHead]
          keyVals = zip keys vals

type Html = String

renderHtml :: RobotPart -> Html
renderHtml part = mconcat ["<h2>", partName, "</h2>",
                           "<p><h3>desc</h3>", partDesc,
                           partCost,
                           "</p><p><h3>count</h3>",
                           partCount, "</p>"]
    where partName = name part
          partDesc = description part
          partCost = show (cost part)
          partCount = show (count part)

leftArm :: RobotPart
leftArm = RobotPart {
            name = "left arm",
            description = "left arm for face punching!",
            cost = 1000.00,
            count = 3
            }

rightArm :: RobotPart
rightArm = RobotPart {
            name = "right arm",
            description = "right arm for kind hand gestures",
            cost = 1025.00,
            count = 5
            }

robotHead :: RobotPart
robotHead = RobotPart {
             name = "robot head",
             description = "this head looks mad",
             cost = 5092.25,
             count = 2
             }

data RobotPart = RobotPart {
                    name :: String,
                    description :: String,
                    cost :: Double,
                    count :: Int} deriving Show
