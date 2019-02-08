module Unit1.Lesson08.Ackermann where

mainAckermann :: IO()
mainAckermann = do
    print (ackermann 3 3)
    print (ackermann 3 8)
    print (ackermann 3 9)

ackermann 0 n = n + 1
ackermann m 0 = ackermann (m-1) 1
ackermann m n = ackermann (m-1) (ackermann m (n-1))
