module Unit4.Lesson22.Code22_3 where

import           System.Environment

main22_3 :: IO ()
main22_3 = do
  args <- getArgs
  mapM_ putStrLn args
