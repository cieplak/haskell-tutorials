-- From the command line:
-- $ runhaskell Arrow.hs

import Control.Arrow as A

addHello       = (++ "Hello")
addSpace       = (++ " ")
addWorld       = (++ "World")
addExclamation = (++ "!")

greetingA = (putStrLn . addExclamation . addWorld . addSpace . addHello) ""

greetingB = (addHello >>> addSpace >>> addWorld >>> addExclamation >>> putStrLn) ""

main = do
  greetingA
  greetingB

