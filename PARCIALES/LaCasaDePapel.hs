import Text.Show.Functions
import Data.List(genericLength)

data Rehen = Rehen {
    nombre :: String,
    nivelDeComplot :: Float,
    nivelDeMiedo :: Float,
    plan :: [Chorro -> Chorro]
} deriving (Show)

data Chorro = Chorro {
    nombreChorro :: String,
    habilidades :: [String],
    armas :: [Arma]
} deriving (Show)

type Arma = Rehen -> Rehen 

pistola :: Float -> Arma
pistola calibre unRehen = alterarComplot (subtract (calibre * 5)) . alterarMiedo (+((*3) . genericLength . nombre $ unRehen)) $ unRehen

ametralladora :: Float -> Arma
ametralladora cantidadBalas = alterarComplot (/2) . alterarMiedo (+ cantidadBalas)

alterarMiedo :: (Float -> Float) -> Rehen -> Rehen
alterarMiedo cambiarMiedo unRehen = unRehen {nivelDeMiedo = cambiarMiedo . nivelDeMiedo $ unRehen}

alterarComplot :: (Float -> Float) -> Rehen -> Rehen
alterarComplot cambiarComplot unRehen = unRehen {nivelDeComplot = cambiarComplot . nivelDeComplot $ unRehen}

maxBy :: Ord b => (a -> b) -> a -> a -> a
maxBy ponderacion unValor otroValor
  | ponderacion unValor > ponderacion otroValor = unValor
  | otherwise                                   = otroValor

maximumBy :: Ord b => (a -> b) -> [a] -> a
maximumBy ponderacion = foldl1 (maxBy ponderacion)  

disparos :: Rehen -> Chorro -> Arma
disparos unRehen unChorro = maximumBy (disparar unRehen) (armas unChorro)

disparar :: Rehen -> Arma -> Float
disparar unRehen unArma = nivelDeMiedo . unArma $ unRehen

hacerseElMalo :: Chorro -> Arma
hacerseElMalo (Chorro "Berlin" habilidades _) unRehen = alterarMiedo (+ (genericLength . concat $ habilidades)) unRehen
hacerseElMalo (Chorro "Rio" _ _) unRehen = alterarComplot (+20) unRehen
hacerseElMalo _ unRehen = alterarMiedo (+10) unRehen

type Plan = Chorro -> Chorro

atacarAlLadron :: Rehen -> Plan
atacarAlLadron rehenCompañero = modificarArmas quitarArmas
    where
        quitarArmas = drop (div (length . nombre $ rehenCompañero) 10)

modificarArmas :: ([Arma] -> [Arma]) -> Chorro -> Chorro
modificarArmas alterarArmas unChorro = unChorro {armas = alterarArmas . armas $ unChorro}

esconderse :: Plan
esconderse unChorro = modificarArmas perderArmas unChorro
    where
        perderArmas = (drop (div (length . habilidades $ unChorro) 3))

-------------
-- Punto 1 --
-------------

tokio = Chorro "Tokio" ["trabajo psiclogico", "entrar en moto"] [pistola 9, pistola 9, ametralladora 30]
profesor = Chorro "Profesor" ["disfrazarse de linyera", "disfrazarse de payaso" , "estar siempre"] []
pablo = Rehen "pablo" 40 30 [esconderse]
arturito = Rehen "autorito" 70 50 [esconderse, atacarAlLadron pablo]

-------------
-- Punto 2 --
-------------

esInteligente :: Chorro -> Bool
esInteligente = (>2) . length . habilidades

-------------
-- Punto 3 --
-------------

conseguirArma :: Arma -> Chorro -> Chorro
conseguirArma nuevaArma = modificarArmas (nuevaArma :) 

-------------
-- Punto 4 --
-------------

intimidarRehen :: Arma -> Arma
intimidarRehen metodoIntimidacion unRehen = metodoIntimidacion unRehen

-------------
-- Punto 5 --
-------------

calmarAguas :: Chorro -> [Rehen] -> [Rehen]
calmarAguas unChorro unosRehenes = map (filter ((>60) . nivelDeComplot) unChorro) unosRehenes

calmarRehen :: Chorro -> Rehen -> Rehen
calmarRehen unChorro unRehen
  | nivelDeComplot unRehen > 60 = alterarMiedo (*0.5) (disparos unChorro unRehen)
  | otherwise = unRehen

-------------
-- Punto 6 --
-------------

puedeEscaparseDeLaPoli :: Chorro -> Bool
puedeEscaparseDeLaPoli unChorro = any estaDisfrazado (habilidades unChorro)

estaDisfrazado :: String -> Bool
estaDisfrazado unaHabilidad = take 14 unaHabilidad == "disfrazarse de"

-------------
-- Punto 7 --
-------------

laCosaPintaMal :: [Chorro] -> [Rehen] -> Bool
laCosaPintaMal chorros rehenes = ((sum (map nivelDeComplot rehenes)) / (genericLength rehenes)) > 
                                 ((sum (map nivelDeMiedo rehenes)) / ((2*) . genericLength $ rehenes) * (genericLength (map armas chorros)))

-------------
-- Punto 8 --
-------------

seRebelan :: [Rehen] -> [Rehen]
seRebelan = map (alterarComplot (subtract 10))

-------------
-- Punto 9 --
-------------

ejecutarPlanValencia :: [Chorro] -> [Rehen] -> 
