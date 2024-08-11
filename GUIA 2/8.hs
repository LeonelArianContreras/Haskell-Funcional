inverso :: Fractional a => a -> a
inverso num = (/num) 1

inversaRaizCuadrada :: Floating a => a -> a
inversaRaizCuadrada num = inverso.sqrt $ num