esCuadradoPerfecto :: Number -> Bool
esCuadradoPerfecto nro = hacerCuadradoPerfecto nro 0

hacerCuadradoPerfecto :: Number -> Number -> Bool
hacerCuadradoPerfecto nro base
    | cuadradoPerfecto base < nro = hacerCuadradoPerfecto nro (base + 1)
    | cuadradoPerfecto base == nro = True
    | otherwise = False

cuadradoPerfecto :: Number -> Number
cuadradoPerfecto base = base * base