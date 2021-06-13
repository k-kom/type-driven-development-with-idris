-- `Data.Vect` is a _library module_
import Data.Vect

-- _vector- is a list that includes both the number and ty type of elements

fourInts : Vect 4 Int
fourInts = [0, 1, 2, 3]

sixInts : Vect 6 Int
sixInts = [4,5,6,7,8,9]

tenInts : Vect 10 Int
-- `++` adds vector's length too
tenInts = fourInts ++ sixInts

{- modules can be combined into _packages_
   Prelude is defined in a package called `prelude`
-}
