module LiftToToplevel.C1 where

import LiftToToplevel.D1 hiding (main)

sumSquares1 (x:xs) = sq x + sumSquares1 xs

sumSquares1 [] = 0

-- sq x =x ^pow
sq x =x ^pow * z
  where z = 5

pow = 2

