module Unit4.Lesson24.Code24_8 where

import System.IO
import System.Environment

main24_8 :: IO ()
main24_8 = do
    args <- getArgs
    let fileName = head args
    input <- readFile fileName
    let summary = (countsText.getCounts) input
    appendFile "/home/vahid/mygithub/gpwh/src/Unit4/Lesson24/stat.dat" (mconcat [fileName, " ", summary, "\n"])
    putStrLn summary

countsText :: (Int, Int, Int) -> String
countsText (cc, wc, lc) = unwords ["chars: ", show cc, " words:", show wc,
    " lines:", show lc]

getCounts :: String -> (Int, Int, Int)
getCounts input = (charCount, wordCount, lineCount)
    where charCount = length input
          wordCount = (length.words) input
          lineCount = (length.lines) input
