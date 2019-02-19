module Unit1.Lesson04.AddressLetter where

mainAddressLetter :: IO ()
mainAddressLetter = do
  print (addressLetter ("Bob", "Smith") "ny")
  print (addressLetter ("Bob", "Jones") "ny")
  print (addressLetter ("Samantha", "Smith") "sf")
  print (addressLetter ("Bob", "Smith") "reno")
  print (addressLetter ("Bob", "Smith") "la")

addressLetter name location = locationFunction name
  where
    locationFunction = getLocationFunction location

getLocationFunction location =
  case location of
    "ny"   -> nyOffice
    "sf"   -> sfOffice
    "reno" -> renoOffice
    _      -> (\name -> (fst name) ++ " " ++ (snd name))

sfOffice name =
  if lastName < "L"
    then nameText ++ " - PO Box 1234 - San Fransisco, CA, 94111"
    else nameText ++ " - PO Box 1010 - San Fransisco, CA, 94109"
  where
    lastName = snd name
    nameText = (fst name) ++ " " ++ lastName

nyOffice name = nameText ++ ": PO Box 789 - New York, NY, 10013"
  where
    nameText = (fst name) ++ " " ++ (snd name)

renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 89523"
  where
    nameText = snd name
