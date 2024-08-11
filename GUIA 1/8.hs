fahrToCelsius :: Float -> Float
fahrToCelsius fahr = (fahr - 32)* 5/9

haceFrio :: Float -> Bool
haceFrio tempFahr = fahrToCelsius tempFahr > 8