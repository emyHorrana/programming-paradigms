pesoMaximo :: Double
pesoMaximo = 15.0

-- pesoMaximo = 20.0

data Encomenda = Encomenda{ destinatario::String , peso:: Double , frete:: Double}

descrever :: Encomenda -> String
descrever e = destinatario e ++ " - Peso: " ++ show (peso e) ++ " kg - Frete: R$ " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas = filter (\e -> peso e <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)

main :: IO ()
main = do
  let encomendas = [ Encomenda { destinatario = "Ana", peso = 5.0, frete = 10.0 }, Encomenda { destinatario = "Bruno", peso = 12.0, frete = 15.0 },Encomenda { destinatario = "Carla", peso = 20.0, frete = 25.0 },Encomenda { destinatario = "Joao", peso = 8.0, frete = 12.0 }]

  putStrLn "Todas as encomendas:"
  mapM_ putStrLn (map descrever encomendas)

  putStrLn "Encomendas que cabem:"
  mapM_ putStrLn (map descrever (cabemNaVassoura encomendas))

  putStrLn "Total de fretes:"
  print (totalDeFretes (cabemNaVassoura encomendas))
