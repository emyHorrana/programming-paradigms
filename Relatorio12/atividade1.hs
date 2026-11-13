data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco intensidade) =
  nome ++ " - R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe nome preco intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido leite (Cafe nome preco intensidade) =
  if leite
    then preco + 2.0
    else preco
main :: IO ()
main = do
  let cafe1 = Cafe "Cafe 1" 8.0 3
  let cafe2 = Cafe "Cafe 2" 10.0 6
  let cafe3 = Cafe "Cafe 3" 12.0 9

  putStrLn "Cafes do dia: "

  putStrLn (descrever cafe1)
  putStrLn (forca cafe1)

  putStrLn (descrever cafe2)
  putStrLn (forca cafe2)

  putStrLn (descrever cafe3)
  putStrLn (forca cafe3)

  putStrLn "Preco do pedido: "

  putStrLn "Com leite:"
  print (precoDoPedido True cafe2)

  putStrLn "Sem leite:"
  print (precoDoPedido False cafe2)
