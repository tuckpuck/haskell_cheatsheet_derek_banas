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

