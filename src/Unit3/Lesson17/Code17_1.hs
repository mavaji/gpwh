module Unit3.Lesson17.Code17_1 where

import Data.List

main17_1 :: IO()
main17_1 = do
    print(myLast [1,2,3])
    print(myMin [8,5,10,13])
    print(myMax [8,5,10,13])

    print(myAll (\x -> even x) [2,4,6,8])
    print(myAll (\x -> even x) [2,4,6,7])

    print(myAny (\x -> odd x) [2,4,6,7])
    
myLast :: [a] -> a
myLast = head.reverse

myMin :: Ord a => [a] -> a
myMin = head.sort

myMax :: Ord a => [a] -> a
myMax = myLast.sort

myAll :: (a -> Bool) -> [a] -> Bool
myAll testFunc = (foldr (&&) True).(map testFunc)

myAny :: (a -> Bool) -> [a] -> Bool
myAny testFunc = (foldr (||) False).(map testFunc)
