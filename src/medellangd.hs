import Data.Char (isAlpha)
import qualified Data.Text as T


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
    
main :: IO ()
main = do
        let pie  = medellangd "No, I am definitely not a pie!"
        print pie
        let such = medellangd "w0w such t3xt..."
        print such