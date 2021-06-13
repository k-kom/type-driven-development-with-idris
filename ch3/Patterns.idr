module Patterns

invert : Bool -> Bool
invert False = True
invert True = False

describeList : List Int -> String
describeList [] = "Empty"
describeList (x :: xs) = "Non-empty, tail = " ++ show xs


-- C-c C-s, (C-c C-t,) C-c C-c
allLengths : List String -> List Nat
allLengths [] = []
allLengths (word :: words) = length word :: allLengths words

{- case splitting (C-c C-c)-}

xor : Bool -> Bool -> Bool
xor False y = y
xor True y = not y

mutual
  isEven : Nat -> Bool
  isEven Z = True
  isEven (S k) = isOdd k

  isOdd : Nat -> Bool
  isOdd Z = False
  isOdd (S k) = isEven k
