module Unit5.Lesson31.Code31_18 where

import qualified Data.Map as Map

main31_18 :: IO ()
main31_18 = do
  ((assessCandidate readCandidate) >>= print)
  print (assessCandidate (Map.lookup 1 candidateDB))
  print (assessCandidate (Map.lookup 2 candidateDB))
  print (assessCandidate (Map.lookup 3 candidateDB))
  print (assessCandidate candidates)

data Grade
  = F
  | D
  | C
  | B
  | A
  deriving (Eq, Ord, Enum, Show, Read)

data Degree
  = HS
  | BA
  | MS
  | PhD
  deriving (Eq, Ord, Enum, Show, Read)

data Candidate = Candidate
  { candidateId :: Int
  , codeReview  :: Grade
  , cultureFit  :: Grade
  , education   :: Degree
  } deriving (Show)

candidate1 :: Candidate
candidate1 = Candidate {candidateId = 1, codeReview = A, cultureFit = A, education = BA}

candidate2 :: Candidate
candidate2 = Candidate {candidateId = 2, codeReview = C, cultureFit = A, education = PhD}

candidate3 :: Candidate
candidate3 = Candidate {candidateId = 3, codeReview = A, cultureFit = B, education = MS}

candidates :: [Candidate]
candidates = [candidate1, candidate2, candidate3]

candidateDB :: Map.Map Int Candidate
candidateDB = Map.fromList [(1, candidate1), (2, candidate2), (3, candidate3)]

assessCandidate :: Monad m => m Candidate -> m String
assessCandidate candidates = do
  candidate <- candidates
  let passed = viable candidate
  let statement =
        if passed
          then "passed"
          else "failed"
  return statement

readInt :: IO Int
readInt = getLine >>= (return . read)

readGrade :: IO Grade
readGrade = getLine >>= (return . read)

readDegree :: IO Degree
readDegree = getLine >>= (return . read)

readCandidate :: IO Candidate
readCandidate = do
  putStrLn "enter id:"
  cId <- readInt
  putStrLn "enter code grade:"
  codeGrade <- readGrade
  putStrLn "enter culture fit grade:"
  cultureGrade <- readGrade
  putStrLn "enter education:"
  degree <- readDegree
  return (Candidate {candidateId = cId, codeReview = codeGrade, cultureFit = cultureGrade, education = degree})

viable :: Candidate -> Bool
viable candidate = all (== True) tests
  where
    passedCoding = codeReview candidate > B
    passedCultureFit = cultureFit candidate > C
    educationMin = education candidate >= MS
    tests = [passedCoding, passedCultureFit, educationMin]
