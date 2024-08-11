parDeFns :: (Int -> Bool) -> (Int -> Int) -> Int -> (Bool, Int)
parDeFns primerFuncAplicada segundaFuncAplicada numero= (primerFuncAplicada numero, segundaFuncAplicada numero)