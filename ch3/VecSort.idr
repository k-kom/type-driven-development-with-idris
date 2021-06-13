import Data.Vect

insert : Ord elem => (x : elem) -> (xsSorted : Vect len elem) -> Vect (S len) elem
insert x [] = [x]
-- idris-make-cases-from-hole
-- (atom: ctrl-alt-m but idris-mode C-c C-m? did not work)
insert x (y :: xs) = case x < y of
                          False => y :: insert x xs
                          True => x :: y :: xs

insSort : Ord elem => Vect n elem -> Vect n elem
insSort [] = []
insSort (x :: xs) = let xsSorted = insSort xs in
                        insert x xsSorted

-- don't forget to check totality by :total insSort
