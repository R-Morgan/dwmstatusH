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

snatchTime :: IO String
snatchTime = do ct <- getClockTime
                let timeStr = show ct
                return timeStr 

snatchLoadAvg :: IO String
snatchLoadAvg = do ldavg <- getLoadAvg
                   let avg1 = sample_1 ldavg
                       avg5 = sample_5 ldavg
                       avg15 = sample_15 ldavg
                       loadList = avg1:avg5:[avg15]
                       loadStrings = unwords $ map show loadList 
                   return loadStrings

