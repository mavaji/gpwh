main :: IO()
main = do
    print (sayAmount 12)
    print (sayAmount 1)

sayAmount n = case n of
    1 -> "One"
    2 -> "Two"
    _ -> "a bunch"
