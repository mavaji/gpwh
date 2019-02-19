module Unit4.Lesson22.Code22_7 where

main22_7 :: IO ()
main22_7 = do
    userInput <- getContents
    mapM_ print userInput
