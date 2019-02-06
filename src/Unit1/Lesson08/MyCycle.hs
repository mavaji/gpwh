main :: IO ()
main = do
    print (myCycle [1..3])

myCycle (first:rest) = first:myCycle (rest ++ [first])
