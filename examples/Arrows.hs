-- From the command line:
-- $ runhaskell Arrows.hs

import Control.Arrow ((>>>))

import Prelude hiding ((>))

-- (>) = (>>>)
(>) f g = g . f

addHello       = (++ "Hello")
addSpace       = (++ " ")
addWorld       = (++ "World")
addExclamation = (++ "!")

greetingA = (putStrLn . addExclamation . addWorld . addSpace . addHello) ""

greetingB = (addHello > addSpace > addWorld > addExclamation > putStrLn) ""

main = do
  greetingA
  greetingB

