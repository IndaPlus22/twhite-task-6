skyffla :: [] -> []
skyffla list = list 

main :: IO ()
main = do 
    let list = [1,2,3,2,1]
    let res = skyffla list
    print res 