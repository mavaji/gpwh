module Unit1.Lesson07.MyGCD where

mainMyGCD :: IO()
mainMyGCD = do
    print (myGCD 20 16)

myGCD a b = if remainder == 0
            then b
            else myGCD b remainder
            where remainder = a `mod` b
