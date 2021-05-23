twice : (a -> a) -> a -> a
twice f x = f (f x)

double : Num ty => ty -> ty
double x = x + x

Shape : Type
rotate : Shape -> Shape
rotate x = id x

quadruple : Num a => a -> a
quadruple = twice double

turn_around : Shape -> Shape
turn_around = twice rotate
