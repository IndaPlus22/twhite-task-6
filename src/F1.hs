module F1 where

import Data.Char 

fib :: int -> int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

rovarsprak :: String -> String
rovarsprak = concatMap (\c -> if isVowel c then [c] else [c, 'o', c])

karpsravor :: String -> String
karpsravor "" = ""
karpsravor s = if not (isVowel (head s)) 
    then head s : karpsravor (drop 2 (tail s))
    else head s : karpsravor (tail s)

isVowel :: Char -> Bool
isVowel c = c `elem` "aeiouy"

medellangd :: String -> Double
medellangd "" = 0
medellangd s = countLetters s / countWords s
    where
        countLetters :: String -> Double
        countLetters s = fromIntegral (length (filter isAlpha s))
        countWords :: String -> Double
        countWords s = fromIntegral (length (words (splitWords s)))

        splitWords :: String -> String
        splitWords [] = []
        splitWords (x:xs) = if isAlpha x 
                            then x: splitWords xs
                            else ' ' : splitWords xs

skyffla :: [x] -> [x]
skyffla [] = []
skyffla list = everyOther list ++ skyffla (everyOther (tail list))
    where
        everyOther :: [x] -> [x]
        everyOther [] = []
        everyOther list = 
            if length list == 1 
            then list
            else head list : everyOther (drop 1 (tail list))

main :: IO ()
main = do 
    let res_fib = fib 42
    print res_fib

    let s = rovarsprak "progp"
    print s 
    let k  = karpsravor(rovarsprak "progp")
    print k

    let pie  = medellangd "No, I am definitely not a pie!"
    print pie
    let such = medellangd "w0w such t3xt..."
    print such

    let res_skyffla = skyffla  [1..9]
    print res_skyffla