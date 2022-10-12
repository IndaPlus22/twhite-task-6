doubleMe x = x + x
doubleUs x y = x*2 + y*2

doubleSmallerNumber x = if x > 100
    then x 
    else x*2 

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

replLetters :: String -> String 
replLetters s = 
    let 
        repl 'o' = 'x'
        repl  c   = c
    in  map repl s

let s = "Hello World!" 
print replLetters s 