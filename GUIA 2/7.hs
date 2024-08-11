esBisiesto :: Int -> Bool
esBisiesto year = ((==0) . mod year $ 400) || ((==0) . mod year $ 4) && ((/=0) . mod year $ 100)