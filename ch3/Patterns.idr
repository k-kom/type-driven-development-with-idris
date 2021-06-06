module Patterns

invert : Bool -> Bool
invert False = True
invert True = False

describeList : List Int -> String
describeList [] = "Empty"
describeList (x :: xs) = "Non-empty, tail = " ++ show xs

allLengths : List String -> List Nat
-- C-c C-s creates the below line
allLengths xs = ?allLengths_rhs
