
data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento{cliente :: String, servico :: String, valor :: Double, etapa :: Etapa}
descrever :: Atendimento -> String
descrever a = cliente a ++ " - " ++ servico a ++ " - " ++ show (etapa a)
concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos = sum (map valor (filter (\a -> etapa a == Concluido) atendimentos))

main :: IO ()
main = do
  let atendimento1 = Atendimento { cliente = "Ana", servico = "Servico 1", valor = 50.0, etapa = NaFila }
  let atendimento2 = Atendimento { cliente = "Bruno", servico = "Servico 2", valor = 80.0, etapa = NoBanho }
  let atendimento3 = Atendimento { cliente = "Carla", servico = "Servico 3", valor = 40.0, etapa = NaFila }
  let atendimentos = [atendimento1, atendimento2, atendimento3]
  let novosAtendimentos = [concluir atendimento1, atendimento2, concluir atendimento3]

  putStrLn "Atendimentos originais: "
  mapM_ putStrLn (map descrever atendimentos)
  print (arrecadado atendimentos)

  putStrLn "Novos atendimentos: "
  mapM_ putStrLn (map descrever novosAtendimentos)
  print (arrecadado novosAtendimentos)
