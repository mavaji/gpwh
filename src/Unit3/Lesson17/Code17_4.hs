module Unit3.Lesson17.Code17_4 where

main17_4 :: IO ()
main17_4 = do
  print (Red <> Yellow)
  print (Red <> Blue)
  print (Green <> Purple)
  print ((Green <> Blue) <> Yellow)
  print (Green <> (Blue <> Yellow))

data Color
  = Red
  | Yellow
  | Blue
  | Green
  | Purple
  | Orange
  | Brown
  deriving (Show, Eq)

instance Semigroup Color where
  (<>) Red Blue = Purple
  (<>) Blue Red = Purple
  (<>) Yellow Blue = Green
  (<>) Blue Yellow = Green
  (<>) Yellow Red = Orange
  (<>) Red Yellow = Orange
  (<>) a b =
    if a == b
      then a
      else Brown
