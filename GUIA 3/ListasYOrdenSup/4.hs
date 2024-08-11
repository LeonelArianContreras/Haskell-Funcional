filtradoMejoresNotas :: [Int] -> Int
filtradoMejoresNotas notasPorAlumno = maximum notasPorAlumno

mejoresNotas :: [[Int]] -> [Int]
mejoresNotas notasCurso = map filtradoMejoresNotas notasCurso