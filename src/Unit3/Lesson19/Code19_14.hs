import qualified Data.Map as Map

main :: IO ()
main = do
    print (processRequest 13 organCatalog)
    print (processRequest 12 organCatalog)

    print (process Brain)
    print (process Heart)
    print (process Spleen)
    print (process Kidney)
    print (report (process Brain))
    print (report (process Spleen))

processRequest :: Int -> Map.Map Int Organ -> String
processRequest id catalog = processAndReport organ
    where organ = Map.lookup id catalog

processAndReport :: (Maybe Organ) -> String
processAndReport (Just organ) = report (process organ)
processAndReport Nothing = "error, id not found"

process :: Organ -> (Location, Container)
process organ = placeInLocation (organToContainer organ)

report :: (Location, Container) -> String
report (location, container) = show container ++ " in the " ++ show location

data Location = Lab | Kitchen | Bathroom deriving Show

organToContainer :: Organ -> Container
organToContainer Brain = Vat Brain
organToContainer Heart = Cooler Heart
organToContainer organ = Bag organ

placeInLocation :: Container -> (Location, Container)
placeInLocation (Vat a) = (Lab, Vat a)
placeInLocation (Cooler a) = (Lab, Cooler a)
placeInLocation (Bag a) = (Kitchen, Bag a)

data Container = Vat Organ | Cooler Organ | Bag Organ

instance Show Container where
    show (Vat organ) = show organ ++ " in a vat"
    show (Cooler organ) = show organ ++ " in a cooler"
    show (Bag organ) = show organ ++ " in a bag"

data Organ = Heart | Brain | Kidney | Spleen deriving (Show, Eq)    
organs :: [Organ]
organs = [Heart, Heart, Brain, Spleen, Spleen, Kidney]

ids :: [Int]
ids = [2, 7, 13, 14, 21, 24]

organPairs :: [(Int, Organ)]
organPairs = zip ids organs

organCatalog :: Map.Map Int Organ
organCatalog = Map.fromList organPairs
