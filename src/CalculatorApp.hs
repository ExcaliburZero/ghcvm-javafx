{-# LANGUAGE MagicHash #-}
module CalculatorApp where

import Java
import JavaFX.Types
import JavaFX.Methods

data {-# CLASS "org.ghcvm.CalculatorApp extends javafx.application.Application" #-}
  CalculatorApp = CalculatorApp (Object# CalculatorApp)


start :: Stage -> Java CalculatorApp ()
start stage = do
 button <- newButton
 root <- newGroup
 scene <- newScene root 400 300
 _ <- button <.> setText "Hello"
 _ <- root <.> getChildren >- addChild button
 stage <.> (do setTitle "My JavaFX Application"
               setScene scene
               showStage)

foreign export java "start" start :: Stage -> Java CalculatorApp ()
