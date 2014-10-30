import DwmStatusH.SysFunctions

main = do ldavg <- snatchLoadAvg 
          systime <- snatchTime
          putStrLn $  "LdAvg: " ++ ldavg ++ " " ++ systime

          
