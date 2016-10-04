{-# LANGUAGE MagicHash, MultiParamTypeClasses #-}
module JavaFX.Types where

data {-# CLASS "javafx.application.Application" #-} Application
  = Application (Object# Application)

data {-# CLASS "javafx.scene.Group" #-} Group
  = Group (Object# Group)

data {-# CLASS "javafx.scene.Scene" #-} Scene
  = Scene (Object# Scene)

data {-# CLASS "javafx.scene.shape.Circle" #-} Circle
  = Circle (Object# Circle)

data {-# CLASS "javafx.stage.Stage" #-} Stage
  = Stage (Object# Stage)

data {-# CLASS "javafx.scene.Parent" #-} Parent
  = Parent (Object# Parent)

data {-# CLASS "javafx.scene.Node" #-} Node
  = Node (Object# Node)

data {-# CLASS "javafx.scene.shape.Shape" #-} Shape
  = Shape (Object# Shape)

data {-# CLASS "javafx.collections.ObservableList" #-} ObservableList
  = ObservableList (Object# ObservableList)

instance Class Application where
  obj = Application
  unobj (Application o) = o

instance Class Group where
  obj = Group
  unobj (Group o) = o

instance Class Scene where
  obj = Scene
  unobj (Scene o) = o

instance Class Circle where
  obj = Circle
  unobj (Circle o) = o

instance Class Stage where
  obj = Stage
  unobj (Stage o) = o

instance Class Parent where
  obj = Parent
  unobj (Parent o) = o

instance Class Node where
  obj = Node
  unobj (Node o) = o

instance Class Shape where
  obj = Shape
  unobj (Shape o) = o

instance Class ObservableList where
  obj = ObservableList
  unobj (ObservableList o) = o

instance Extends Group Parent
instance Extends Parent Node
instance Extends Shape Node
instance Extends Circle Shape
instance Extends Node Object
