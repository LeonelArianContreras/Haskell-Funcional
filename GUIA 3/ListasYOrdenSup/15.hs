esPar :: Int -> Bool
esPar = (==0) . (flip mod 2)

primerosPares :: [Int] -> [Int]
primerosPares numeros = takeWhile esPar numeros

-------------------------------------------------------

esDivisor :: Int -> Int -> Bool
esDivisor dividendo  = (/=0) . mod dividendo 

primerosDivisores :: [Int] -> Int -> [Int]
primerosDivisores posiblesDivisores dividendo = takeWhile (esDivisor (dividendo) ) posiblesDivisores