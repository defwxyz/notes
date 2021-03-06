module LibDataTypes (
   Ellipse(..)
   ,Figure(..)
   ,Point(..)
   ,Rectangle(..)
   ,Circle(..)
   ,Line(..)
   ,Polygon(..)
   ,Star(..)
) where

import SvgColor (Color)
import Data.Ord

 
data Point = Point {
    x :: Int
  , y :: Int 
} deriving (Show, Eq)

data Rectangle = Rectangle {
    rectangleXY :: Point
  , rectangleWidth :: Int
  , rectangleHeight :: Int
} deriving (Show, Eq)

data Circle = Circle {
    circleCenter :: Point
  , circleRadius :: Int
} deriving (Show, Eq)

data Ellipse = Ellipse {
    ellipseCenter :: Point
  , ellipseWidth :: Int
  , ellipseHeight :: Int
} deriving (Show, Eq)

data Line = Line {
    lineSource :: Point
  , lineTarget :: Point
} deriving (Show, Eq) 

data Polygon = Polygon {
    polygonPoints :: [ Point ]
} deriving (Show, Eq)

data Star = Star {
    starPoints :: [ Point ]
} deriving (Show, Eq) 
    
data Figure = FigureRectangle Rectangle
    | FigureEllipse Ellipse 
    | FigureCircle Circle 
    | FigureLine Line 
    | FigurePolygon Polygon
    | FigureStar Star 
    deriving (Show,Eq)


