huboMesMejorDe :: [Int] -> [Int] -> Int -> Bool
huboMesMejorDe primerSueldoAnual segundoSueldoAnual numeroX = any (>numeroX) primerSueldoAnual && any (>numeroX) segundoSueldoAnual