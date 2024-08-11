aplicarPar :: (Int -> Int) -> (Int, Int) -> (Int, Int)
aplicarPar funcionAplicada (numeroUno, numeroDos) = (funcionAplicada numeroUno, funcionAplicada numeroDos)