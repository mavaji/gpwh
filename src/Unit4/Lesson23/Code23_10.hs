{-# LANGUAGE OverloadedStrings #-}

module Unit4.Lesson23.Code23_10 where

import qualified Data.Text as T

main23_10 :: IO ()
main23_10 = do
  print (highlight dharma bgText)
  print (highlight "dog" "a dog walking dogs")

dharma :: T.Text
dharma = "धर"

bgText :: T.Text
bgText = "श्रेयान्स्वधर्मो विगुणः परधर्मात्स्वनुष्ठितात्।स्वधर्मे निधनं श्रेयः परधर्मो"

highlight :: T.Text -> T.Text -> T.Text
highlight query fullText = T.intercalate highlighted pieces
  where
    pieces = T.splitOn query fullText
    highlighted = mconcat ["{", query, "}"]
