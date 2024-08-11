
sumaHabilidad :: Int -> [Int] -> [Int]
sumaHabilidad cantMejoraHabilidad estadisticas = map (min 12 . (+cantMejoraHabilidad)) estadisticas

subirHabilidad :: Int -> [Int] -> [Int]
subirHabilidad cantMejoraHabilidad estadisticas = sumaHabilidad cantMejoraHabilidad estadisticas
