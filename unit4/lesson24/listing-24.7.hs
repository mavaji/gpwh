main :: IO ()
main = do
    print ((countsText.getCounts) "this is\n some text")


countsText :: (Int, Int, Int) -> String
countsText (cc, wc, lc) = unwords ["chars: ", show cc, " words:", show wc,
    " lines:", show lc]

getCounts :: String -> (Int, Int, Int)
getCounts input = (charCount, wordCount, lineCount)
    where charCount = length input
          wordCount = (length.words) input
          lineCount = (length.lines) input
