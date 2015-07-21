
----------------------------------------------------
-- Introduction to Algebraic Datatypes in Haskell --
----------------------------------------------------

-- https://github.com/soenkehahn/ADTs_101

-- As an experiment this talk is using a Haskell module and doctest.
-- This hopefully allows for an interactive talk.


module ADTs_101 where


-- * Introduction

-- ADTs are a fundamental concept. More fundamental than:
--
-- - type classes
-- - type class instances
-- - polymorphism
-- - monads (!), functors
-- - monad transformers
-- - category theory
-- - arrows
-- - FRP
-- - parser combinators
-- - generic programming
-- - etc.

-- It's easy to get confused by the typical learning materials for Haskell and
-- think that monads are a very fundamental concept. And they are not irrelevant,
-- but they are an advanced topic. We should get a good grasp of ADTs first.

-- Target audience: absolute beginners
-- Ambition: provide some additional intuition for intermediate Haskellers


-- * Product Types

data Position
  = Position Int Int
  deriving (Show)

-- This datatype declaration creates a type `Position` *and* a constructor
-- `Position`.

-- A product type is a cartesian product of its fields.

-- $ >>> Position 3 5
-- Position 3 5

-- $ >>> Position (3 + 5) 13
-- Position 8 13

-- A constructor is
--   - atomic
--   - *has* to be used to construct a value of the type

mkPosition :: Int -> Position
mkPosition n = Position n n

-- $ >>> mkPosition 4
-- Position 4 4


-- * Implicit Signatures

-- Every datatype declaration introduces implicit values with implicit types.

-- $ Constructors:
-- >>> :t Position
-- Position :: Int -> Int -> Position

-- Selectors:

data Position2 =
  Position2 {
    x :: Int,
    y :: Int
  }

-- $ >>> :t x
-- x :: Position2 -> Int

-- Sometimes it's useful to bring them to mind.


{-
- ChessPiece (Sum Types)
  - Color = White | Black
  - alternatives
  - One of the constructors *has* to be used to construct
    a value of the type
- Everything is a combination of these two principles:
  - Pawn Position Color | King Position Color -- | ...
- Deconstruction: Allowed moves
- Design by Experiment
  data Sort = King | Pawn
- Throw-Away ADTs
  - White | Black

- Don't model what you don't need
- Terminology: Why product and sum
- record update syntax

- combinatorics
  - wrapper
  - enumeration
  - unit types
  - uninhabited types

- recursion

- implicit signatures
-}
