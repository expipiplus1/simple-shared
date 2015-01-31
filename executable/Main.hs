{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import Foreign.C.Types

foreign import ccall "add.h add"
  add :: CInt -> CInt -> IO CInt

main :: IO ()
main = print =<< add 2 3
