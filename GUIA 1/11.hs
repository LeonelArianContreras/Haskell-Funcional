pesoPino :: Int -> Int
pesoPino height = (fromEnum(height <= 3) * height * 300) + (fromEnum(height > 3) * height * 200)

pesoPino :: Float -> Float
pesoPino height = (min height 3) * 300 + (max (height - 3) 0) * 200

pesoUtil :: Float -> Bool
pesoUtil weight = weight > 400 && weight < 1000

sirvePino :: Float -> Bool
sirvePino height = pesoUtil . pesoPino $ height
