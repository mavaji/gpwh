module Unit3.Lesson18.Code18_11 where

main18_11 :: IO ()
main18_11 = do
  print (ourMap (* 2) ourListEx1)

ourMap :: (a -> b) -> List a -> List b
ourMap _ Empty            = Empty
ourMap func (Cons a rest) = Cons (func a) (ourMap func rest)

data List a
  = Empty
  | Cons a
         (List a)
  deriving (Show)

ourListEx1 :: List Int
ourListEx1 = Cons 1 (Cons 2 (Cons 3 Empty))
