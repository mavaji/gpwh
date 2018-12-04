import qualified Data.Map as Map

main :: IO ()
main = do
    print (Map.lookup 7 organCatalog)

organCatalog :: Map.Map Int Organ
organCatalog = Map.fromList organPairs

organPairs :: [(Int, Organ)]
organPairs = zip ids organs

ids :: [Int]
ids = [2, 7, 13, 14, 21, 24]

organs :: [Organ]
organs = [Heart, Heart, Brain, Spleen, Spleen, Kidney]

data Organ = Heart | Brain | Kidney | Spleen deriving (Show, Eq)
