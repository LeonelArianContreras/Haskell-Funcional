dispersion :: (Ord a, Num a) => a -> a -> a -> a
dispersion med1 med2 med3 = max med1 (max med2 med3) - min med1 (min med2 med3)



diasLocos :: Int -> Int -> Int -> Bool
diasLocos med1 med2 med3 = (>100) . dispersion med1 med2 $ med3 


diasParejos :: Int -> Int -> Int -> Bool
diasParejos med1 med2 med3 = (<30) . dispersion med1 med2 $ med3


diasNormales :: Int -> Int -> Int -> Bool
diasNormales med1 med2 med3 = not (diasLocos med1 med2 med3 || diasParejos med1 med2 med3)