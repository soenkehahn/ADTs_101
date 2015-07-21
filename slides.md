# Introduction to Algebraic Datatypes in Haskell

## Fundamental Concept

More fundemantal than:

- type classes
- type class instances
- polymorphism
- monads (!), functors
- monad transformers
- category theory
- arrows
- FRP
- parser combinators
- generic programming
- etc.

It's easy to get confused by the typical learning materials for Haskell and
think that monads are a very fundamental concept. And they are not irrelevant,
but they are an advanced topic. We should get a good grasp of ADTs first.

Target audience: absolute beginners, ambition: provide some additional
intuition for slightly advanced Haskellers

## Abstract Introduction

- Position (Product Types)
  - cartesian product
  - constructor
    - type
    - atomic
    - *has* to be used to construct a value of the type
- implicit signatures
  - implicit values
  - sometimes useful to bring to mind
- selectors
  - Position { x :: Int, y :: Int }
  - x :: Position -> Int
  - record update syntax
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

- combinatorics
  - wrapper
  - enumeration
  - unit types
  - uninhabited types

- recursion

- implicit signatures
