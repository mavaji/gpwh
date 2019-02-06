main :: IO()
main = do
    print (sayAmount 12)
    print (sayAmount 1)

sayAmount 1 = "one"
sayAmount 2 = "two"
sayAmount _ = "a bunch"
