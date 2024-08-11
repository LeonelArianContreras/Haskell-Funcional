frecuenciaCardiaca = [80, 100, 120, 128, 130, 123, 125]

minutoPorIndice :: Int -> Int
minutoPorIndice minuto = div minuto $ 10
  
frecuenciaCardiacaMinuto :: Int -> Int
frecuenciaCardiacaMinuto minutoLista = (frecuenciaCardiaca!!) . minutoPorIndice $ minutoLista

