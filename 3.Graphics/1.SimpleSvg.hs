module SimpleSvgPuzzles where

-- types for SVG
type SvgPicture = [Svg]

data Svg = Circle Integer Integer Integer String

type Position = (Integer, Integer)
type Style = String
         
-- types for XML tags
type TagName = String
type AttributeList = [(String, String)]
type InnerContents = String

renderTag :: TagName -> AttributeList -> InnerContents -> String
renderTag t a i = if i == ""
                    then "<" ++ t ++ " " ++ (renderAttributes a)
                            ++ "/>\n" -- No contents
                    else "<" ++ t ++ " " ++ (renderAttributes a) ++ ">\n"
                            ++ i ++ "</" ++ t ++ ">\n" -- Including contents
    where
        renderAttributes :: AttributeList -> String
        renderAttributes m = foldr (\(n, v) acc ->  n ++ "=" ++
                                                "\"" ++ v ++ "\"" ++ " " ++ acc) "" m

renderSvgPicture :: SvgPicture -> String
renderSvgPicture ss       = renderTag "svg" attrList innerContents
    where
        attrList = [("xmlns", "http://www.w3.org/2000/svg")]
        innerContents = (concatMap renderSvg ss)

        
-- <circle style="fill:blue" r="50" cy="100" cx="100"/>
renderSvg :: Svg -> String
renderSvg (Circle x y r style) = renderTag "circle"
                                        [("cx", show x)
                                              ,("cy", show y)
                                              ,("r", show r)
                                              ,("style", style)
                                              ]
                                         ""

test1 :: SvgPicture                                         
test1 = [Circle 50 50 50 "fill:blue"] -- A blue circle of radius 50 at (50,50)


-- (#) Write circle that creates a circle of specified radius at (0,0)
circle :: Integer -> Svg
circle = undefined

-- (#) Write centreAt that creates a Svg element centred at the position
centreAt :: Svg -> Position -> Svg
centreAt = undefined

-- (#) Write withStyle
withStyle :: Svg -> Style -> Svg
withStyle = undefined

-- (#) Test with this example
-- test2 :: SvgPicture
-- test2 = [circle 50 `centreAt` (100,100) `withStyle` "fill:green"]

-- (#) Add Rectangle Constructor with x coordinate, y coordinate, height, 
-- width and style. Modify the following functions:
--     renderSvg, centreAt and withStyle

-- (#) Write square that creates a square of specified radius at (0,0)
square :: Integer -> Svg
square = undefined

-- (#) Create a new example with a yellow square over the green circle in
-- test 2.
-- Tip - The height / width of the square should to 50 * sqrt 2
-- Functions to use:
-- sqrt :: Floating a => a -> a
-- round :: (Integral b, RealFrac a) => a -> b
-- floor :: (Integral b, RealFrac a) => a -> b

test3 :: SvgPicture
test3 = undefined
   
-- (#) Write grid that given a list of Positions it repeats the shape at each position
    
grid :: Svg -> [Position] -> [Svg]
grid = undefined

-- (#) Write test4 as a 5 * 4 grid of blue circle from test1
test4 :: SvgPicture
test4 = undefined

--------------------------------------------------------------------------------
-- Main function to test with

main = do
    writeFile "test1.svg" (renderSvgPicture test1)
