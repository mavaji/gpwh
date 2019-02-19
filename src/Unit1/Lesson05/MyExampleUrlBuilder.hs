module Unit1.Lesson05.MyExampleUrlBuilder where

mainMyExampleUrlBuilder :: IO ()
mainMyExampleUrlBuilder = do
  print (getRequestUrl "http://example.com" "1337hAsk3ll" "book" "1234")
  print (exampleUrlBuilder "1337hAsk3ll" "book" "1234")
  print (myExampleUrlBuilder "book" "1234")

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hAsk3ll"

genApiRequestBuilder hostBuilder apiKey = (\resource id -> hostBuilder apiKey resource id)

exampleUrlBuilder = genHostRequestBuilder "http://example.com"

genHostRequestBuilder host = (\apiKey resource id -> getRequestUrl host apiKey resource id)

getRequestUrl host apiKey resource id = host ++ "/" ++ resource ++ "/" ++ id ++ "?token=" ++ apiKey
