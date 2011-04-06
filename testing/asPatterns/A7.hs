module A7 where


--Any type/data constructor name declared in this module can be renamed.
--Any type variable can be renamed.

--Rename type Constructor 'BTree' to 'MyBTree' 
data BTree a = Empty | T a (BTree a) (BTree a)
               deriving Show

buildtree :: Ord a => [a] -> BTree a
buildtree [] = Empty
buildtree (x:xs) = insert x (buildtree xs)

insert :: Ord a => a -> BTree a -> BTree a
insert val (val `T` Empty Empty) = T val Empty (result Empty)
                    where
                       result Empty = val `T`  Empty Empty
insert val (T tval left right)
   | val > tval = T tval left (insert val right)
   | otherwise = T tval (insert val left) right
       
newPat_1 = Empty


f :: String -> String
f newPat_2@((x : xs)) = newPat_2

main :: BTree Int
main = buildtree [3,1,2] 