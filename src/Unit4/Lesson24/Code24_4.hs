module Unit4.Lesson24.Code24_4 where

import           System.IO

main24_4 :: IO ()
main24_4 = do
  helloFile <- openFile "/home/vahid/mygithub/gpwh/src/Unit4/Lesson24/hello.txt" ReadMode
  hasLine <- hIsEOF helloFile
  firstLine <-
    if not hasLine
      then hGetLine helloFile
      else return "empty"
  putStrLn "done!"
