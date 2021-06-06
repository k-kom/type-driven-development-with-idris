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


||| Calculate the average length of words in a string.
||| @str a string containing words separeted by white-space.
average2 : (str : String) -> Double
average2 str = let numWords = wordCount str
                   totalLength = sum (allLengths (words str)) in
                   cast totalLength / cast numWords
  where
    wordCount : String -> Nat
    wordCount str = length (words str)

    allLengths : List String -> List Nat
    allLengths strs = map length strs
