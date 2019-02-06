main :: IO()
main = do
    print (showName name1)
    print (showName name2)

type FirstName = String
type LastName = String
type MiddleName = String
data Name = Name FirstName LastName | NameWithMiddle FirstName MiddleName LastName

showName :: Name -> String
showName (Name f l ) = f ++ " " ++ l
showName (NameWithMiddle f m l) = f ++ " " ++ m ++ " " ++ l

name1 = Name "Jerome" "Salinger"
name2 = NameWithMiddle "Jerome" "David" "Salinger"
