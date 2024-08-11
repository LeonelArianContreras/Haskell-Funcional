
seraMultiplo :: Int -> Int -> Bool
seraMultiplo numeroParaMultiplicidad numeroDeLista = (mod numeroParaMultiplicidad numeroDeLista) == 0


esMultiploDeAlguno :: Int -> [Int] -> Bool
esMultiploDeAlguno numeroMultiplo numerosAChequear = any (seraMultiplo numeroMultiplo) numerosAChequear


-- esMultiploDeAlguno :: Int -> [Int] -> Bool
-- esMultiploDeAlguno numeroMultiplo numerosAChequear = any (\x -> numeroMultiplo `mod` x == 0) numerosAChequear
