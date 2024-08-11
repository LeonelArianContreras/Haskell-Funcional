duracionLlamadas = (("horarioReducido" , [20,10,25,15]) , ("horarioNormal" , [10,5,8,2,9,10]))

cuandoHizoMasLlamadas :: String
cuandoHizoMasLlamadas
    | length (snd (fst duracionLlamadas)) > length (snd (snd duracionLlamadas)) =  fst (fst duracionLlamadas)
    | otherwise = fst (snd duracionLlamadas)