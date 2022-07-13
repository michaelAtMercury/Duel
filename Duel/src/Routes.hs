{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE TypeFamilies          #-}
module Routes where

import Yesod
import Data.Text

data DuelMonsters = DuelMonsters 


mkYesod "DuelMonsters" [parseRoutes|
/ HomeR GET
|]

instance Yesod DuelMonsters 

bootYesod = warp 3000 DuelMonsters

getHomeR :: Handler Text
getHomeR = pure "I dont think this is YuGiOh" 

