import System.IO
import System.Environment

main :: IO ()
main = do
    args <- getArgs
    let fileName = head args
    input <- readFile fileName
    let summary = (countsText.getCounts) input
    appendFile "stat.dat" (mconcat [fileName, " ", summary, "\n"])
    putStrLn summary

countsText :: (Int, Int, Int) -> String
countsText (cc, wc, lc) = unwords ["chars: ", show cc, " words:", show wc,
    " lines:", show lc]

getCounts :: String -> (Int, Int, Int)
getCounts input = (charCount, wordCount, lineCount)
    where charCount = length input
          wordCount = (length.words) input
          lineCount = (length.lines) input
