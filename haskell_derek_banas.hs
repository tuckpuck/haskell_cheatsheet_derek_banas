-- To run this program, open enclosing folder in VSCode and run 'ghci haskell_derek_banas.hs'

-- comments
{-
Multiline comments
-}

import Data.List
import System.IO 

-- Int -2^63 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Datatypes
-- Integer
-- Float
-- Double
-- Bool
-- Char
-- Tuple
-- List

always5 :: Int
always5 = 5

sumOfNums = sum [1..1000]

-- operations +-*/
modOp = mod 5 4
modInfixOp = 5 `mod` 4
negNumEx = 5 + (-4)
num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)
-- fromIntegral converts int to Float
-- pi, exp, log, ** 

truncVal = truncate 9.9999
roundVal = round 9.5
floorVal = floor 9.99999
ceilVal = ceiling 9.99999

isFalse = not(True)

-- :t can be used to show how a function works

-- Lists
primeNumbers = [3,5,7,11]
-- Concatenate lists
morePrime = primeNumbers ++ [13,17,19,23,29]
-- Cons operator to make a lists
favNums = 27 : 24 : 49 : 56 : []

multiList = [[3,4,5],[6,8,7]]

-- Add to list using cons operator
fullPrime = 2 : morePrime
fullPrimeLen = length fullPrime
revPrime = reverse fullPrime
isListEmpty = null fullPrime
-- Get a specific value from a list (pass index)
secondPrime = fullPrime !! 1

firstPrime = head fullPrime
lastPrime = last fullPrime
-- Show the first three primes
first3Primes = take 3 fullPrime
-- Show all remaining primes after removing 3
removedPrimes = drop 3 fullPrime
is7InList = 7 `elem` fullPrime
maxPrime = maximum fullPrime
minPrime = minimum fullPrime

zeroToTen = [0..10]
evenNums = [2,4..20]
everyOtherLetter = ['A', 'C' .. 'Z']
--infinite list
infinPow10 = [10, 20..]

cycleList = take 10 (cycle [1,2,3,4,5])
many2s = take 10 (repeat 2)
many3s = replicate 10 3

listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]

divideBy9and13 = [x | x <- [100..500], x `mod` 13 == 0 || x `mod` 9 == 0]

sortedList = sort [9,1,3,5,7,2,7,3]

sumOfLists = zipWith (+) [1,2,3,4,5][6,7,8,9,10]

listBiggerThan5 = filter (>5) fullPrime

evensUpTo20 = takeWhile (<=20) [2,4..]

multOfListLeft = foldl (*) 1 [2,3,4,5]
multOfListRight = foldr (*) 1 [2,3,4,5]

pow3List = [3^n | n <- [1..10]]

multiplicationTable = [[x * y | y <- [1..10]] | x <- [1..10]]

-- Tuples
randomTuple = (1, "Random Tuple")
tuplePair = ("Tucker Triggs", 29)

tuckerName = fst tuplePair
tuckerAge = snd tuplePair

names = ["Sherry", "Terry", "John"]
addresses = ["123 Lane", "245 Way", "657 Blvd"]

tuplePairs = zip names addresses

-- creating functions: funcName param1 param2 = operations (returned value)
-- every function must return something. Can't begin with an uppercase letter
addMe :: Int -> Int -> Int
addMe x y = x + y

addTuples :: (Int,Int) -> (Int,Int) -> (Int, Int)
addTuples (a,b) (c,d) = (a+b,c+d)

whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
whatAge x = "You're " ++ show x ++ " years old"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Gaurds
isOdd :: Int -> Bool
isOdd n 
    | n `mod` 2 == 0 = False
    | otherwise = True

whatGrade :: Int -> String
whatGrade age
    | (age >= 5) && (age <= 6) = "Kindergarden"
    | (age > 6) && (age <= 10) = "Elementary"
    | (age > 10) && (age <= 14) = "Middle School"
    | (age > 14) && (age <= 18) = "High School" 
    | otherwise = "Go to college"

-- Where 
batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
    | avg <= 0.200 = "Terrible"
    | avg <= 0.250 = "Average"
    | avg <= 0.280 = "Good" 
    | otherwise = "You are a superstar"
    where avg = hits / atBats

getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The first item is " ++ show x ++ " and the rest of the items are " ++ show xs

getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ show x


-- To run this, use ghc --make haskell_derek_banas.hs 
-- then ./haskell_derek_banas
main = do 
    putStrLn ("What's your name?")
    name <- getLine
    putStrLn ("Hello " ++ name)














