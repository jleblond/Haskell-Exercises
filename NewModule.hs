module NewModule where


coordinates = [(0,1),(1,2),(3,4)]




replacecustom :: [(Integer, Integer)] -> String
replacecustom [] = ""
replacecustom (y:ys) 
 =  concat [replaceEach . show $ y , " ", replacecustom ys]
 

replaceEach :: String -> String
replaceEach [] =[]
replaceEach (x:xs)
  | x == '(' = replaceEach xs
  | x == ')' = replaceEach xs
  | otherwise = x:replaceEach xs
  