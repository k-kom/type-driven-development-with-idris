
StringOrInt : Bool -> Type
StringOrInt x = case x of
     True => Int
     False => String

-- (arg-name : Type)
getStringOrInt : (x : Bool) -> StringOrInt x
getStringOrInt x = case x of
    True => 94
    False => "Ninety four"

valToString : (x : Bool) -> StringOrInt x -> String
valToString x val = case x of
    True => ?xtrueType
    False => ?xfalseType

-- type declaration is necessary
-- square x = x * x
