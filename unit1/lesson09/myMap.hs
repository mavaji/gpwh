main :: IO()
main = do 
    print (myMap (*2) [1,2,3])

myMap f [] = []
myMap f (x:xs) = f(x):myMap f xs
