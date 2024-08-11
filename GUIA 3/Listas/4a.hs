duracionLlamadas = (("horarioReducido" , [20,10,25,15]) , ("horarioNormal" , [10,5,8,2,9,10]))

cuandoHabloMasMinutos :: String
cuandoHabloMasMinutos 
    | sum (snd (fst duracionLlamadas)) > sum (snd (snd duracionLlamadas)) = fst (fst duracionLlamadas)
    | otherwise = fst (snd duracionLlamadas)
