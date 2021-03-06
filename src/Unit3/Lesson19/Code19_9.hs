module Unit3.Lesson19.Code19_9 where

import           Data.List
import qualified Data.Map  as Map

main19_9 :: IO ()
main19_9 = do
  print cleanList

showOrgan :: Maybe Organ -> String
showOrgan (Just organ) = show organ
showOrgan Nothing      = ""

organList :: [String]
organList = map showOrgan justTheOrgans

cleanList :: String
cleanList = intercalate ", " organList

isSomething :: Maybe Organ -> Bool
isSomething Nothing  = False
isSomething (Just _) = True

justTheOrgans :: [Maybe Organ]
justTheOrgans = filter isSomething availableOrgans

availableOrgans :: [Maybe Organ]
availableOrgans = getDrawerContents possibleDrawers organCatalog

getDrawerContents :: [Int] -> Map.Map Int Organ -> [Maybe Organ]
getDrawerContents ids catalog = map getContents ids
  where
    getContents = \id -> Map.lookup id catalog

possibleDrawers :: [Int]
possibleDrawers = [1 .. 50]

data Organ
  = Heart
  | Brain
  | Kidney
  | Spleen
  deriving (Show, Eq)

organs :: [Organ]
organs = [Heart, Heart, Brain, Spleen, Spleen, Kidney]

ids :: [Int]
ids = [2, 7, 13, 14, 21, 24]

organPairs :: [(Int, Organ)]
organPairs = zip ids organs

organCatalog :: Map.Map Int Organ
organCatalog = Map.fromList organPairs
