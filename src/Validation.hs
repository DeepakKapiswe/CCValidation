module Validation
  (validateCard)
     where
import Data.Char (isDigit)

-- | validate str will validate the length and characters 
--   of the input str and call check function for further
--   analysis if input is valid
validateStr::String->Bool
validateStr inp | (length inp == 16) && (all isDigit inp)  = check inp
                | otherwise = False

-- | check the main function to do all the validations 
--   according to Luan Algo, Input is supposed to be a
--   string of length 16 and all characters as digits
check::String->Bool
check ls = rem digitSum 10 == 0
 where
   digitSum = foldl sumAll 0 zipped
   sumAll acc (idx,x) = (sum.digits.show $ f idx x) + acc
   zipped = zip [1..] (digits ls)


-- | digits will return a list of Int the input number is
--   composed of
digits::String->[Int]
digits =fmap (read.pure)

-- | An auxiliary function f to check and double the value
--   if the index is odd i.e. each alternate elements from
--   right
f::Int->Int->Int
f idx val | odd idx = 2*val
          | otherwise = val

validateCard :: IO ()
validateCard = do
  inp <- getLine
  let result = case validateStr inp of
                 True -> " is valid"
                 _->" is not valid"
  putStrLn $ "Credit Card "++inp++result
