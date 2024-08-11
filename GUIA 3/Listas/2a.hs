
frecuenciaCardiaca = [80, 100, 120, 128, 130, 123, 125]

promedioFrecuenciaCardiaca :: Double
promedioFrecuenciaCardiaca = (flip (/) . fromIntegral . length) frecuenciaCardiaca . sum $ frecuenciaCardiaca

