module GlossPuzzles where

-- These puzzles require the gloss package that can be installed
-- with the command:
--
--     cabal install gloss

import Graphics.Gloss

-- For 2-d pictures many of the useful types are in
-- Graphics.Gloss.Data.Picture and the
-- display :: Display -> Color -> Picture -> IO()
-- function will display them

test1 :: Picture                                         
test1 = undefined -- A blue circle of radius 50 at (50,50)


-- (#) Write circle that creates a circle of specified radius at (0,0)

-- (#) Write centreAt that creates a Svg element centred at the position

-- (#) Add Rectangle Constructor with x coordinate, y coordinate, height, 
-- width and style.

-- (#) Write square that creates a square of specified radius at (0,0)


-- (#) Create a new example with a yellow square over the green circle in
-- test 2.
-- Tip - The height / width of the square should to 50 * sqrt 2
-- Functions to use:
-- sqrt :: Floating a => a -> a
-- round :: (Integral b, RealFrac a) => a -> b
-- floor :: (Integral b, RealFrac a) => a -> b

   
-- (#) Write grid that given a list of Positions it repeats the shape at each position
    
grid :: Picture -> [(Integer, Integer)] -> [Picture]
grid = undefined

-- (#) Write test4 as a 5 * 4 grid of blue circle from test1
test4 :: Picture
test4 = undefined

--------------------------------------------------------------------------------
-- Main function to test with

testDisplay :: Display
testDisplay = (InWindow "Gloss Puzzles" (600, 450) (25, 25))

main :: IO ()
main = display testDisplay white test1
