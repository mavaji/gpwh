import System.IO

main :: IO ()
main = do
    myFile <- openFile "hello.txt" ReadMode
    hClose myFile
    putStrLn "done!"
