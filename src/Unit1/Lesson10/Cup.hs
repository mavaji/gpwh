module Unit1.Lesson10.Cup where

mainCup :: IO ()
mainCup = do
    print (getOz coffeeCup)
    print (getOz afterASip)
    print (getOz afterTwoSips)
    print (getOz afterGulp)
    print (getOz afterBigGulp)
    print (getOz afterManySips)

cup flOz = \message -> message flOz

coffeeCup = cup 12

getOz aCup = aCup (\flOz -> flOz)

drink aCup ozDrank = if ozDiff >= 0
                     then cup ozDiff
                     else cup 0
                     where flOz = getOz aCup
                           ozDiff = flOz - ozDrank

isEmpty aCup = getOz aCup == 0

afterManySips = foldl drink coffeeCup [1,1,1,1,1]
afterBigGulp = drink coffeeCup 20
afterASip = drink coffeeCup 1
afterTwoSips = drink afterASip 1
afterGulp = drink afterTwoSips 4
