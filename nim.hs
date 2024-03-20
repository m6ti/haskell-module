import System.IO
import Data.Char

nim :: IO ()
nim = do
            let board = [5,4,3,2,1]
            putChar '\n'
            printboard board 
            putChar '\n'
            putStrLn "Enter which row you would like to remove from, and how many you would like to remove. E.g. 1,3. Top row with 5 stars is row 1."
            input <- getLine
            play board (input!!0) (input!!2)
    
play :: [Int] -> Char -> Char -> IO ()
play board row amount = do 
            let newboard = replace (digitToInt row - 1) (digitToInt amount) board
            -- Incorrect --> let newboard = [x | x <- board, x!!(digitToInt row) == board!!(digitToInt row)  - digitToInt amount]
            if (digitToInt row) >  5 || (digitToInt row) < 1 then
                do
                    putStrLn "Try again... You have chosen an incorrect row."
                    putStrLn "Enter which row you would like to remove from, and how many you would like to remove. E.g. 1,3."
                    input <- getLine
                    play board (input!!0) (input!!2)
            else
                if digitToInt amount >  board!!(digitToInt row - 1) then
                    do
                        putStrLn "Try again... You have chosen an incorrect value."
                        putStrLn "Enter which row you would like to remove from, and how many you would like to remove. E.g. 1,3."
                        input <- getLine
                        play board (input!!0) (input!!2)
            else
                do
                    putChar '\n'
                    printboard newboard
                    if newboard == [0,0,0,0,0] then
                        do
                            putStrLn "Game Over! You Win"
                    else
                        do
                            putStrLn "Next player, Enter which row you would like to remove from, and how many you would like to remove. E.g. 1,3."
                            input <- getLine
                            play newboard (input!!0) (input!!2)
            -- Incorrect --> newboard!!row = board!!row - digitToInt amount

            --do
            --    
                

replace :: Int -> Int -> [Int] -> [Int]
replace _ _ [] = []
replace index val (x:xs) = 
            if index == 0 then 
                (x-val):xs
            else
                x: replace (index-1) val xs
                

printboard :: [Int] ->  IO ()
printboard [] = putChar ' '
printboard (x:xs) = if x <= 0 then 
                        do 
                            putChar '\n'
                            printboard xs
                    else 
                        do 
                            putStr " * "
                            printboard ((x-1):xs)
