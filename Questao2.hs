revstr :: String -> String
revstr = unwords . reverse . words

main = do
  print(revstr "la vou eu")