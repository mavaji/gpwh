import Data.List

main :: IO ()
main = do
    print (sort names)

data Name = Name (String, String) deriving (Show, Eq)

instance Ord Name where
    compare (Name (f1,l1)) (Name (f2, l2)) = compare (l1, f1) (l2, f2)

names :: [Name]
names = [Name ("Emil", "Coiran"), Name ("Eugene", "Thacker"), Name ("Friedrich", "Nietzsche")]
