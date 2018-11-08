main :: IO()
main = do
    print (myFoldl (+) 0 [1,2,3])

myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs where newInit = f init x
