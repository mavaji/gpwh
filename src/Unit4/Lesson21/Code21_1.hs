module Unit4.Lesson21.Code21_1 where

helloPerson :: String -> String
helloPerson name = "Hello" ++ " " ++ name ++ "!"

main21_1 :: IO ()
main21_1 = do
    putStrLn "Hello! What's your name?"
    name <- getLine
    let statement = helloPerson name
    putStrLn statement
