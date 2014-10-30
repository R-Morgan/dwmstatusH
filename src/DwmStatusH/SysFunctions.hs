module DwmStatusH.SysFunctions
(
snatchTime,
snatchLoadAvg
) where 

import System.Time
import Data.Time
import Data.Time.LocalTime
import System.Locale
import System.Posix.LoadAvg

snatchTime = do ct <- getClockTime
                print ct

snatchLoadAvg = do ldavg <- getLoadAvg
                   let avg1 = sample_1 ldavg
                   print $ show  avg1

