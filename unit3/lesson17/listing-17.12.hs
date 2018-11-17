main :: IO()
main = do
    print (createPTable ["heads", "tails"] [0.5, 0.5])

type Events = [String]
type Probs = [Double]

data PTable = PTable Events Probs

createPTable :: Events -> Probs -> PTable
createPTable events probs = PTable events normalizedProbs
    where totalProbs = sum probs
          normalizedProbs = map (\x -> x/totalProbs) probs

showPair :: String -> Double -> String
showPair event prob = mconcat [event,"|",show prob, "\n"]

instance Show PTable where
    show (PTable events probs) = mconcat pairs where pairs = zipWith showPair events probs
