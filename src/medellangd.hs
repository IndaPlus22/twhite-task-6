module Data.Char

medellangd :: String -> Double 
medellangd s = isAlpha s 

//TODO 
{- En möjlig ansats är att först stycka upp texten i ord 
och sedan beräkna antal ord samt totala längden på orden. -}

main :: IO ()
main = do
    let res = medellangd("No, I am definitely not a pie!")
    medellangd("w0w such t3xt...")
    print res 