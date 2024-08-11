esMultiploDeDos :: Int -> Bool
esMultiploDeDos num = (==0) . (mod num) $ 2