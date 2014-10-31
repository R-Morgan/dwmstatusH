module DwmStatusH.X11Tools 
(
setWMName
) where 
import Graphics.X11.Xlib
--import Graphics.X11.Xlib.Extras (getTextProperty, wcTextPropertyToTextList)
import System.Exit (exitWith, ExitCode(..))
import Control.Concurrent (threadDelay)

{-main :: IO ()
main = do
 dpy <- openDisplay ""
 let dflt = defaultScreen dpy
     border = blackPixel dpy dflt
     background = whitePixel dpy dflt
 rootw <- rootWindow dpy dflt
 wmText <- getTextProperty dpy rootw wM_NAME
 wmString <-  wcTextPropertyToTextList dpy wmText
 sync dpy False 
 putStrLn $ wmString !! 0
 exitWith ExitSuccess
-}

--setWMName :: String -> IO ()
setWMName contents = do 
  dpy <- openDisplay ""
  let dflt = defaultScreen dpy
  rootw <- rootWindow dpy dflt
  setTextProperty dpy rootw contents wM_NAME
  sync dpy False 
  threadDelay(10 * 1000000)
  return ()
  exitWith ExitSuccess
