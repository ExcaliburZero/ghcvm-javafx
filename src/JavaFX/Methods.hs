{-# LANGUAGE FlexibleContexts #-}
module JavaFX.Methods where

import JavaFX.Types

foreign import java unsafe "@new" newScene :: (Extends a Parent)
                                           => a
                                           -> Double
                                           -> Double -> Java b Scene

foreign import java unsafe "@new"
  newCircle :: Double -> Double -> Double -> Java c Circle

foreign import java unsafe "@new"
  newTextField' :: JString -> Java c TextField

newTextField :: String -> Java c TextField
newTextField = newTextField' . mkJString

foreign import java unsafe "@new" newGroup :: Java c Group

foreign import java unsafe "javafx.Utils.newGroupGen"
  newGroupGen :: Extends a Node => a -> Java c Group

-- launch eventually calls back into Haskell land so it should be marked 'safe'
foreign import java safe "@static javafx.application.Application.launch"
  launch :: JClass -> StringArray -> IO ()

foreign import java unsafe "getChildren" getChildren :: (Extends c Parent) => Java c ObservableList

foreign import java unsafe "@interface add" addChild :: Extends a Object => a -> Java ObservableList Bool

foreign import java unsafe "show" showStage :: Java Stage ()

foreign import java unsafe "setTitle" setTitle' :: JString -> Java Stage ()

setTitle :: String -> Java Stage ()
setTitle = setTitle' . mkJString

foreign import java unsafe "setScene" setScene :: Scene -> Java Stage ()
