module Unit1.Lesson08.Collatz where

mainCollatz :: IO()
mainCollatz = do
    print (collatz 9)
    print (collatz 999)
    print (collatz 92)
    print (collatz 91)
    print (map collatz [100..120])

collatz 1 = 1
collatz n = if even n then 1 + collatz (n `div` 2) else 1 + collatz (n*3 + 1)
