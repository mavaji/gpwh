module Unit3.Lesson18.Code18_8 where

import           Data.Char

main18_8 :: IO ()
main18_8 = do
  print (transform (* 3) aPoint)
  print (transform reverse aPerson)
  print (transform toLower initials)
  print (toList (transform toLower initials))

transform :: (a -> a) -> Triple a -> Triple a
transform f (Triple x y z) = Triple (f x) (f y) (f z)

toList :: Triple a -> [a]
toList (Triple x y z) = [x, y, z]

first :: Triple a -> a
first (Triple x _ _) = x

second :: Triple a -> a
second (Triple _ x _) = x

third :: Triple a -> a
third (Triple _ _ x) = x

type Initials = Triple Char

initials :: Initials
initials = Triple 'H' 'P' 'L'

type FullName = Triple String

aPerson :: FullName
aPerson = Triple "Howard" "Phillips" "Lovecraft"

type Point3D = Triple Double

aPoint :: Point3D
aPoint = Triple 0.1 53.2 12.3

data Triple a =
  Triple a
         a
         a
  deriving (Show)
