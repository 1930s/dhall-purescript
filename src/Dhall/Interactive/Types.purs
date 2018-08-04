module Dhall.Interactive.Types where


import Data.Either (Either)
import Data.Map (Map)
import Data.Set (Set)
import Data.Variant (Variant)
import Dhall.Core.AST (Expr)

data Import = Import String
data Hole = Hole

type InteractiveExpr v = Expr (Set (Variant v)) (Either Import Hole)
type Annotation =
  ( collapsed :: Boolean
  )

type DB = Map Import (InteractiveExpr Annotation)