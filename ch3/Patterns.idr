module Patterns

invert : Bool -> Bool
invert False = True
invert True = False

describeList : List Int -> String
describeList [] = "Empty"
describeList (x :: xs) = "Non-empty, tail = " ++ show xs


-- C-c C-s, (C-c C-t,) C-c C-c
-- C-c C-s: produces a case with some holes from a function definition
-- C-c C-c: produces multiple cases (with holes) from _constructors_ (p.165)
allLengths : List String -> List Nat
allLengths [] = []
allLengths (word :: words) = length word :: allLengths words

{- case splitting (C-c C-c)-}

xor : Bool -> Bool -> Bool
xor False y = y
xor True y = not y

-- define two functions with `mutual`
mutual
  isEven : Nat -> Bool
  isEven Z = True
  isEven (S k) = isOdd k

  isOdd : Nat -> Bool
  isOdd Z = False
  isOdd (S k) = isEven k

{- Idris will consider a function total if
     * It has clauses that cover all possible well-typed inputs
     * All recursive calls converge on a _base case_
   More totality details in Chapter 10, and 11.
-}

someList : List String -> List String
someList [] = ?someList_rhs_1
someList (x :: xs) = ?someList_rhs_2
