main :: IO()
main = do
    print (myTake 3 "hello world")
    print (myTake 4 [1])

myTake _ [] = []
myTake 0 _ = []
myTake n (x:xs) = x:rest where rest = myTake (n - 1) xs
