main :: IO()
main = do
    print (firstName testPatient)
    print (lastName testPatient)

type FirstName = String
type LastName = String
type Age = Int
type Height = Int
type PatientName = (String, String)

--patientInfo :: FirstName -> LastName -> Age -> Height -> String

firstName :: PatientName -> String
firstName patient = fst patient

lastName :: PatientName -> String
lastName patient = snd patient

testPatient = ("John", "Doe")
