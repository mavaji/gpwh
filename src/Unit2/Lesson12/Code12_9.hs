module Unit2.Lesson12.Code12_9 where

main12_9 :: IO()
main12_9 = do
   print (showBloodType patient1BT)
   print (showBloodType patient2BT)
   print (showBloodType patient3BT)

   print (canDonateTo patient1BT patient2BT)
   print (canDonateTo patient2BT patient1BT)
   print (canDonateTo patient2BT patient3BT)
   print (canDonateTo patient1BT patient3BT)
   print (canDonateTo patient3BT patient1BT)

data Sex = Male | Female
sexInitial :: Sex -> Char
sexInitial Male = 'M'
sexInitial Female = 'F'

data RhType = Pos | Neg

data ABOType = A | B | AB | O

data BloodType = BloodType ABOType RhType

patient1BT :: BloodType
patient1BT = BloodType A Pos

patient2BT :: BloodType
patient2BT = BloodType O Neg

patient3BT :: BloodType
patient3BT = BloodType AB Pos

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

canDonateTo :: BloodType -> BloodType -> Bool
canDonateTo (BloodType O _) _ = True
canDonateTo _ (BloodType AB _) = True
canDonateTo (BloodType A _) (BloodType A _) = True
canDonateTo (BloodType B _) (BloodType B _) = True
canDonateTo _ _ = False --otherwise
