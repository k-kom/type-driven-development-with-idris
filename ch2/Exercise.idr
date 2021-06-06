module Exercise

export

palindrome : (str : String) -> Bool
palindrome str = let str = toLower str
                 in str == (reverse str)

-- if expression
-- if length word > 10 then "What a long word!" else "Short word

palindrome4 : (str : String) -> Bool
palindrome4 str = length str >= 10 && palindrome str

palindrome5 : Nat -> String -> Bool
palindrome5 threshold str = length str >= threshold && palindrome str

counts : String -> (Nat, Nat)
counts str = (length (words str), (length str))

top_ten : Ord a => List a -> List a
top_ten xs = (take 10 (reverse (sort xs)))

over_length : Nat -> List String -> Nat
over_length n strs = let xs = filter (\x => length x > n) strs
                     in length xs

-- I don't answer exercises with `repl` because it requires FFI 😞.
