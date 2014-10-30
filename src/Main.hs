import DwmStatusH.SysFunctions

main = do ldavg <- snatchLoadAvg 
          localSysTime <- snatchTime
          putStrLn $  "LdAvg: " ++ ldavg ++ " " ++ localSysTime

          
