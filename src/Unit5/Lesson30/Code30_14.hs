module Unit5.Lesson30.Code30_14 where

main30_14 :: IO ()
main30_14 = askForName >> getLine >>= (\name -> return (nameStatement name)) >>= putStrLn
--main30_14 = (nameStatement <$> (askForName >> getLine)) >>= putStrLn

nameStatement :: String -> String
nameStatement name = "Hello, " ++ name ++ "!"

askForName :: IO ()
askForName = putStrLn "What is your name?"
