{-# LANGUAGE MagicHash #-}
module CalculatorApp where

import JavaFX.Types
import JavaFX.Methods

data {-# CLASS "org.ghcvm.CalculatorApp extends javafx.application.Application" #-}
  CalculatorApp = CalculatorApp (Object# CalculatorApp)


start :: Stage -> Java CalculatorApp ()
start stage = do
 circle <- newCircle 40 40 30
 root <- newGroup
 scene <- newScene root 400 300
 _ <- root <.> getChildren >- addChild circle
 stage <.> (do setTitle "My JavaFX Application"
               setScene scene
               showStage)

foreign export java "start" start :: Stage -> Java CalculatorApp ()
