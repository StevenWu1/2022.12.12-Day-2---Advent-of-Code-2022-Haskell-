import System.IO
import Data.List

wincase a
 | a == "A X" = 4 -- tie
 | a == "B X" = 1 -- lose
 | a == "C X" = 7 -- win
 | a == "A Y" = 8 -- win
 | a == "B Y" = 5 -- tie
 | a == "C Y" = 2 -- lose
 | a == "A Z" = 3 -- lose
 | a == "B Z" = 9 -- win
 | otherwise = 6 -- tie

wincase2 a
 | a == "A X" = 3 -- lose
 | a == "B X" = 1 -- lose
 | a == "C X" = 2 -- lose
 | a == "A Y" = 4 -- tie
 | a == "B Y" = 5 -- tie
 | a == "C Y" = 6 -- tie
 | a == "A Z" = 8 -- win
 | a == "B Z" = 9 -- win
 | otherwise = 7 -- win

convert a = sum (map wincase a)
convert2 a = sum (map wincase2 a)

main = do
  x1 <- readFile "part1.txt"
  let x2 = lines x1
  print(convert x2)
  x3 <- readFile "part2.txt"
  let x4 = lines x3
  print x4
  print(convert2 x4)
  putStrLn "Hello"
  putStrLn "World"
