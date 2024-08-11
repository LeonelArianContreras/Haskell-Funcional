crecimientoAnual :: Int -> Int
crecimientoAnual edad 
    | edad <= 10 = 24 - (edad * 2)
    | edad <= 15 = 4
    | edad <= 17 = 2
    | edad <= 19 = 1
    | otherwise = 0
---------------------------------------------------------------------

crecimientoEntreEdades :: Int -> Int -> Int
crecimientoEntreEdades deEdad hastaEdad = sum (map crecimientoAnual [deEdad..hastaEdad-1])

---------------------------------------------------------------------

sumaAltura :: Int -> Int -> Int
sumaAltura edad altura = (crecimientoAnual edad) + altura

alturasEnUnAnio :: [Int] -> Int -> [Int]
alturasEnUnAnio alturasXPersona edad = map (sumaAltura edad) alturasXPersona

---------------------------------------------------------------------

alturaEnEdades :: Int -> Int -> [Int] -> [Int]
alturaEnEdades altura edad diferentesEdades = map (+altura) (map (crecimientoEntreEdades edad) diferentesEdades)