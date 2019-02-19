module Unit4.Lesson24.Code24_3 where

import           System.IO

main24_3 :: IO ()
main24_3 = do
  helloFile <- openFile "/home/vahid/mygithub/gpwh/src/Unit4/Lesson24/hello.txt" ReadMode
  firstLine <- hGetLine helloFile
  putStrLn firstLine
  secondLine <- hGetLine helloFile
  goodbyeFile <- openFile "/home/vahid/mygithub/gpwh/src/Unit4/Lesson24/goodbye.txt" WriteMode
  hPutStrLn goodbyeFile secondLine
  hClose helloFile
  hClose goodbyeFile
  putStrLn "done!"
