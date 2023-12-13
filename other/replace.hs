replace :: String -> Char -> Char -> String
replace "" _ _ = ""
replace x '\0' _ = x
replace s@(x : xs) y z =
  if y `elem` s && z `elem` s
    then if x == y then z : replace xs y z else x : xs
    else s