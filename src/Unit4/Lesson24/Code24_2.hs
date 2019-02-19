module Unit4.Lesson24.Code24_2 where

import           System.IO

main24_2 :: IO ()
main24_2 = do
  myFile <- openFile "/home/vahid/mygithub/gpwh/src/Unit4/Lesson24/hello.txt" ReadMode
  hClose myFile
  putStrLn "done!"
