import DwmStatusH.SysFunctions
import DwmStatusH.X11Tools
import Control.Monad

main = forever $ makeWMString


makeWMString = do ldavg <- snatchLoadAvg 
                  localSysTime <- snatchTime
                  utcSysTime  <- makeUTCTime
                  let outStr = "LdAvg: " ++ ldavg ++ " | Vancouver: " ++ 
                                localSysTime ++ " | UTC: " ++ utcSysTime
                  setWMName outStr
                  return ()
