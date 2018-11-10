main :: IO()
main = do
    print (myFoldr (-) 0 [1,2,3,4])

myFoldr f init [] = init
myFoldr f init (x:xs) = f x rightResult where rightResult = myFoldr f init xs
