module Unit2.Lesson12.Code12_14 where

main12_14 :: IO ()
main12_14 = do
    print (height jackieSmith)
    print (showBloodType (bloodType jackieSmith))

data Sex = Male | Female
data RhType = Pos | Neg
data ABOType = A | B | AB | O
data BloodType = BloodType ABOType RhType
type FirstName = String
type LastName = String
type MiddleName = String
data Name = Name FirstName LastName | NameWithMiddle FirstName MiddleName LastName
data Patient = Patient {name :: Name, sex :: Sex, age :: Int, height :: Int, weight :: Int, bloodType :: BloodType}

showRh :: RhType -> String
showRh Pos = "+"
showRh Neg = "-"

showABO :: ABOType -> String
showABO A = "A"
showABO B = "B"
showABO AB = "AB"
showABO O = "O"

showBloodType :: BloodType -> String
showBloodType (BloodType abo rh) = showABO abo ++ showRh rh

jackieSmith :: Patient
jackieSmith = Patient {name = Name "Jackie" "Smith", age = 43, sex = Female, height = 62, weight = 115, bloodType = BloodType O Neg}

