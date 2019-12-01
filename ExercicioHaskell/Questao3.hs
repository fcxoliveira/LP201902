revtext :: String -> [String]
revtext x = reverse (lines x)

println :: Show a => a -> IO ()
println x = putStrLn (show x)

printlns t = mapM_ println (revtext t)

main = do
  printlns "Nao te amo mais.\nEstarei mentindo dizendo que\nAinda te quero como sempre quis.\nTenho certeza que\nNada foi em vao.\nSinto dentro de mim que\nVoce nao significa nada.\nNao poderia dizer jamais que\nAlimento um grande amor.\nSinto cada vez mais que\nJa te esqueci!\nE jamais usarei a frase:\nEU TE AMO!\nSinto, mas tenho que dizer a verdade\nE tarde demais..."