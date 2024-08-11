lluviasEnero :: [Int]
lluviasEnero = [0,2,5,1,34,2,0,21,0,0,0,5,9,18,4,0]

rachaLluvias :: [Int] -> [[Int]]
rachaLluvias [] = []
rachaLluvias lluvias
    | head lluvias == 0 = rachaLluvias corte
    | otherwise = racha : rachaLluvias resto
    where
        racha = takeWhile (/=0) lluvias
        resto = dropWhile (/=0) lluvias
        corte = dropWhile (==0) lluvias


