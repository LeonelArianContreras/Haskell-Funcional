import Data.List

promedioTotalSinAplazo :: [Float] -> Float
promedioTotalSinAplazo notas = sum (filter (>3) notas) / genericLength ((filter (>3) notas))

promediosSinAplazos :: [[Float]] -> [Float]
promediosSinAplazos notasGrales = map promedioTotalSinAplazo notasGrales
