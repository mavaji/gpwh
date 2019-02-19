module Unit2.Lesson12.Code12_4 where

main12_4 :: IO ()
main12_4 = do
  print (firstName testPatient)
  print (lastName testPatient)

type FirstName = String

type LastName = String

type Age = Int

type Height = Int

type PatientName = (String, String)

firstName :: PatientName -> String
firstName patient = fst patient

lastName :: PatientName -> String
lastName patient = snd patient

testPatient = ("John", "Doe")
