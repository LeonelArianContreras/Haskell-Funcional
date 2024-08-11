esCapicua :: [String] -> Bool
esCapicua cadena = (reverse . concat $ cadena) == concat cadena