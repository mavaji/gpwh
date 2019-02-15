module Unit2.Lesson14.Code14_7 where

main14_7 :: IO()
main14_7 = do
    print (S6 > S5)
    print (S5 > S6)
    print (S5 < S6)
    print (S6 < S6)

data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6

instance Eq SixSidedDie where
    (==) S6 S6 = True
    (==) S5 S5 = True
    (==) S4 S4 = True
    (==) S3 S3 = True
    (==) S2 S2 = True
    (==) S1 S1 = True
    (==) _ _ = False

instance Ord SixSidedDie where
    compare S6 S6 = EQ
    compare S6 _ = GT
    compare _ S6 = LT
    compare S5 S5 = EQ
    compare S5 _ = GT
    compare _ S5 = LT
    compare _ _ = EQ
