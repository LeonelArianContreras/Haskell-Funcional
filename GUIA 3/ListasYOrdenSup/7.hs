restoNulo :: Int -> Int -> Bool
restoNulo numeroADividir = (==0) . mod numeroADividir 

divisores :: Int -> [Int]
divisores numeroADividir = filter (restoNulo numeroADividir) [1 .. numeroADividir] 