exists :: (Int -> Bool) -> [Int] -> Bool
exists funcionAplicada numeros = any funcionAplicada numeros 