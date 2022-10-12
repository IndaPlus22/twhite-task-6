import Data.Char (isAlpha)
import qualified Data.Text as T


medellangd :: String -> Double
medellangd "" = 0
medellangd s = countLetters s / countWords s
    where
        countLetters :: String -> Double
        countLetters s = fromIntegral (length (filter isAlpha s))
        countWords :: String -> Double
        countWords s = 
    
main :: IO ()
main = do
        let pie  = medellangd "No, I am definitely not a pie!"
        print pie
        let such = medellangd "w0w such t3xt..."
        print such