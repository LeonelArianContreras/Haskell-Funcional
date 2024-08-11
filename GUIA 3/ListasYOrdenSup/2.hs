calcularPromedio :: [Float] -> Float
calcularPromedio numeros = sum numeros / (fromIntegral . length $ numeros)

promedios :: [[Float]] -> [Float]
promedios conjuntoDeNumeros = map calcularPromedio conjuntoDeNumeros