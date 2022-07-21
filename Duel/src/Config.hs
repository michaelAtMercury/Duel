module Config where

data Config = Config 
    { host :: String
    , port :: String
    , dbName :: String
    , username :: String
    , password :: String
    }

mkConfig :: Config
mkConfig = Config "" "" "" "" ""
