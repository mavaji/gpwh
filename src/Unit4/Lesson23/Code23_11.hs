{-# LANGUAGE OverloadedStrings #-}

module Unit4.Lesson23.Code23_11 where

import qualified Data.Text       as T
import qualified Data.Text.IO    as TIO
import           GHC.IO.Encoding

main23_11 = do
  setLocaleEncoding utf8
  TIO.putStrLn (highlight dharma bgText)

dharma :: T.Text
dharma = "धर"

bgText :: T.Text
bgText = "श्रेयान्स्वधर्मो विगुणः परधर्मात्स्वनुष्ठितात्।स्वधर्मे निधनं श्रेयः परधर्मो"

highlight :: T.Text -> T.Text -> T.Text
highlight query fullText = T.intercalate highlighted pieces
  where
    pieces = T.splitOn query fullText
    highlighted = mconcat ["{", query, "}"]
