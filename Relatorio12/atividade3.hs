data Esboco = Esboco{ titulo :: String, tecnica :: String, horas :: Int}

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "O caderno esta vazio."
esbocoMaisRecente (e:_) = titulo e ++ " - " ++ tecnica e

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  let caderno = [Esboco { titulo = "Castelo", tecnica = "Nanquim", horas = 3 }, Esboco { titulo = "Dragao", tecnica = "Grafite", horas = 5 }, Esboco { titulo = "Floresta", tecnica = "Carvao", horas = 2 }]
  putStrLn "Caderno:"
  putStrLn (esbocoMaisRecente caderno)
  print (contarEsbocos caderno)
  print (horasDesenhando caderno)
  putStrLn "Caderno vazio"
  putStrLn (esbocoMaisRecente [])

  let novoCaderno = Esboco { titulo = "Ruinas", tecnica = "Grafite", horas = 4 } : caderno
  putStrLn "Caderno anterior:"
  putStrLn (esbocoMaisRecente caderno)
  print (contarEsbocos caderno)
  putStrLn "Caderno novo:"
  putStrLn (esbocoMaisRecente novoCaderno)
  print (contarEsbocos novoCaderno)
  -- print (titulo (head []))
