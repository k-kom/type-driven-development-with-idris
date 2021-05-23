module Main

average : (str : String) -> Double
average str = let
    numWords = wordCount str
    totalLength = sum (allLengths (words str))
    in
        cast totalLength / cast numWords
        where
            wordCount : String -> Nat
            wordCount str = length str

            allLengths : List String -> List Nat
            allLengths strs = map length strs

showAverage : String -> String
showAverage str = "The average word length is : " ++
                  show (average str) ++ "\n"

allLengths : List String -> List Nat
allLengths strs = map length strs

-- main : IO ()
-- main = showAverage ("2345")
