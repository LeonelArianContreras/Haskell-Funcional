existsAny :: (Int -> Bool) -> (Int, Int, Int) -> Bool
existsAny funcionAplicada (elem1, elem2, elem3) = (funcionAplicada elem1) || (funcionAplicada elem2) || (funcionAplicada elem3) 

hom :: (Int -> Bool) -> [Int] -> Bool
hom funcionAplicada elementos = all funcionAplicada elementos