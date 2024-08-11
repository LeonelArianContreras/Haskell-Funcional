
aprobo :: [Int] -> Bool
aprobo notasAlumno = (>=6) . minimum $ notasAlumno

aprobaron :: [[Int]] -> [[Int]]
aprobaron notasDelCurso = filter aprobo notasDelCurso