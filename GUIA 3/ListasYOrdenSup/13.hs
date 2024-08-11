flimitada :: (Int -> Int) -> Int -> Int
flimitada unaFuncion unNumero = min 12 (max 0 (unaFuncion unNumero))

cambiarHabilidad :: (Int -> Int) -> [Int] -> [Int]
cambiarHabilidad unaFuncion habilidades = map (flimitada unaFuncion) habilidades

