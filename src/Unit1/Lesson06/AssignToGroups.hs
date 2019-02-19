module Unit1.Lesson06.AssignToGroups where

mainAssignToGroups :: IO ()
mainAssignToGroups = do
  print
    (assignToGroups
       3
       ["fi1e1.txt", "file2.txt", "file3.txt", "file4.txt", "file5.txt", "file6.txt", "file7.txt", "file8.txt"])
  print (assignToGroups 2 ["Bob", "Kathy", "Sue", "Joan", "Jim", "Mike"])

assignToGroups n aList = zip groups aList
  where
    groups = cycle [1 .. n]
