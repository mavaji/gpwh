main :: IO()
main = do
    print (patientInfo "John" "Doe" 43 74)
    print (patientInfo "Jane" "Smith" 25 62)


patientInfo :: String -> String -> Int -> Int -> String
patientInfo fname lname age height = name ++ " " ++ ageHeight 
    where name = lname ++ ", " ++ fname
          ageHeight = "(" ++ show age ++ "yrs. " ++ show height ++ "in.)"
