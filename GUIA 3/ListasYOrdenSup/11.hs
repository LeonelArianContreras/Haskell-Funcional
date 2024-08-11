aplicarFuncion :: Int -> (Int -> Int) -> Int
aplicarFuncion numeroDeLista aplicarFuncion = aplicarFuncion numeroDeLista

sumaF :: [(Int -> Int)] -> Int -> Int
aplicarFunciones funcionesAplicadas numeroUtil = sum (map (aplicarFuncion numeroUtil) funcionesAplicadas)