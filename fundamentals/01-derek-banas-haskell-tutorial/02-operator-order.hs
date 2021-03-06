{-
******************************
Operator Placement
******************************

We are used to seeing common operators in mathematics as infix operators,
placed between their arguments.

For instance, with the operator +
4 + 5

In Haskell, operators (which really are just functions) can be placed before
or between their operands. However, when placing an operator between two
arguments, it needs to have backticks.

-}

-- Prefix operator (normal function placement)
modExpression = mod 5 4

-- Infix operator
modExpression1 = 5 `mod` 4


-- Negative numbers need to be wrapped in parentheses when following an operator

-- This will throw an error
-- negativeNumAfter = 5 + -4

-- Valid
negativeNumAfter = 5 + (-4)

-- But if they are not following an operator, then they do not need parentheses
negativeNumFirst = -3 + 2

{-
Getting type information using :t

Not only can :t be used to get the type of a variable;
it can also be used to get the type signature of a function.

For instance:

:t sqrt

returns:
sqrt :: Floating a => a -> a

-}

num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9) -- This uses a built-in type-casting function
-- the round function converts in the other direction, from floats to ints
