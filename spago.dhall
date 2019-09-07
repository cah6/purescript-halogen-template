{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ sources =
    [ "src/**/*.purs" ]
, name =
    "halogen-project-template"
, dependencies =
    [ "console"
    , "css"
    , "effect"
    , "halogen"
    , "halogen-css"
    , "psci-support"
    , "random"
    , "run"
    ]
, packages =
    ./packages.dhall
}
