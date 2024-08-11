esMultiploDe :: Int -> Int -> Bool
esMultiploDe num1 num2 = mod num1 num2 == 0

esBisiesto :: Int -> Bool
esBisiesto año = esMultiploDe año 400 || esMultiploDe año 4 && mod año 100 /= 0