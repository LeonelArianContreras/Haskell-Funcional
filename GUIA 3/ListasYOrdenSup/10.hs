aplicarFuncion :: Int -> (Int -> Int) -> Int
aplicarFuncion numeroDeLista aplicarFuncion = aplicarFuncion numeroDeLista

aplicarFunciones :: [(Int -> Int)] -> Int -> [Int]
aplicarFunciones funcionesAplicadas numeroUtil = map (aplicarFuncion numeroUtil) funcionesAplicadas