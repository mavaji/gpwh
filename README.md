# gpwh
Get Programming with Haskell

#### How to run
* Expose the module to be run in `gpwh.cabal`, for example:
```cabal
exposed-modules:     Unit1.Lesson01.Code1_1
```
* Import the module to be run in `app/Main.hs` and call the module's `main` function. Example:
```haskell
module Main where

import Unit4.Lesson21.Code21_9

main :: IO ()
main = do
    main21_9
```
* Run usign `Stack`:
```shell
stack build --exec gpwh
```