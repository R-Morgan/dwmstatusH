import DwmStatusH.SysFunctions
import DwmStatusH.X11Tools
import Control.Monad

main = forever $ makeWMString


makeWMString = do ldavg <- snatchLoadAvg 
                  localSysTime <- snatchTime
                  let outStr = "LdAvg: " ++ ldavg ++ " | Vancouver: " ++ localSysTime
                  setWMName outStr
                  return ()
 
--          putStrLn $  "LdAvg: " ++ ldavg ++ " | Vancouver: " ++ localSysTime

          
