esResultadoPar :: Int -> Int -> Bool
esResultadoPar num1 num2 = (== 0) . mod ((^ num2)num1) $ 2 