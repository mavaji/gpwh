module Unit1.Lesson03.Code3_4 where

main3_4 :: IO ()
main3_4 = do
  print ("add1 1 = " ++ show (add1 1))
  print ("add2 1 = " ++ show (add2 1))
  print ("add3 1 = " ++ show (add3 1))

x = 4

add1 :: Int -> Int
add1 y = y + x

add2 :: Int -> Int
add2 y = (\x -> y + x) 3

add3 :: Int -> Int
add3 y = (\y -> (\x -> y + x) 1) 2
