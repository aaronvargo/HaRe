module MultiMatchesIn2 where

square x y = let sq 0 = 0
                 sq x = x ^ pow
                 pow = 2
             in sq x + sq y
              where
                pow = 56
                

g = let blah = 42 in blah
     where
      blah = 56