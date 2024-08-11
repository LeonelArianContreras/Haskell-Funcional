mejor :: (Int -> Int) -> (Int -> Int) -> Int -> Int
mejor primerFuncion segundaFuncion numeroAplicar = max (primerFuncion numeroAplicar) (segundaFuncion numeroAplicar)