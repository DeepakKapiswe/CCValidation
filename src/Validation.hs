module Validation
  (validateCard)
     where
import Data.Char (isDigit)


validate::String->Bool
validate inp | (length inp == 16) && (all isDigit inp)  = check inp
             | otherwise = False

check::String->Bool
check ls = rem digitSum 10 == 0
 where
   digitSum = foldl sumAll 0 zipped
   sumAll acc (idx,x) = (sum.digits.show $ f idx x) + acc
   zipped = zip [1..] (digits ls)

digits::String->[Int]
digits =fmap (read.pure)

f::Int->Int->Int
f idx val | odd idx = 2*val
          | otherwise = val

validateCard :: IO ()
validateCard = do
  inp <- getLine
  let result = case validate inp of
                 True -> " is valid"
                 _->" is not valid"
  putStrLn $ "Credit Card "++inp++result
