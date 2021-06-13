import Data.Vect

total allLengths : Vect len String -> Vect len Nat
allLengths [] = []
allLengths (word :: words) = length word :: allLengths words

allLengths2 : Vect len String -> Vect len Nat
-- C-c C-a: attempt to solve a hole automatically (atom: ctrl-alt-s)
-- allLengths2 [] =
allLengths2 [] = []
allLengths2 (word :: words) = length word :: allLengths2 words
