sumaNumeros :: [Int] -> Int
sumaNumeros numerosASumar = foldl (+) 0 numerosASumar

productoNumeros :: [Int] -> Int
productoNumeros numerosAMultiplicar = foldl (*) 1 numerosAMultiplicar