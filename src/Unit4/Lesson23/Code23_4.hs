{-# LANGUAGE OverloadedStrings #-}

module Unit4.Lesson23.Code23_4 where

import qualified Data.Text as T

aWord :: T.Text
aWord = "Cheese"

main23_4 :: IO ()
main23_4 = do
  print aWord
