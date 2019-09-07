-- | A barebones template component
module Template
  ( component
  , Query(..)
  , Input
  , Message
  , Slot(..)
  )
  where

import Custom.Prelude

import Custom.Halogen as H

type State =
  { placeholder :: String
  }
data Action
  = SetState State

data Query a
  = GetState a
type Input =
  { placeholder :: String
  }
type Message = Void
type Slot = H.Slot Query Message

type ChildSlots =
  ( _default :: H.Slot (Const Void) Void Unit
  )

component ::
     H.Component H.HTML Query Input Message Aff
component =
    H.mkComponent
      { initialState
      , render
      , eval: H.mkEval $ H.defaultEval
        { handleAction = handleAction
        }
      }

initialState :: Input -> State
initialState input =
  { placeholder: ""
  }

render ::
     State
  -> H.ComponentHTML Action ChildSlots Aff
render st =
  H.div_
  [ H.elClassAttr "button" "button"
    [ H.onClick \_ -> Nothing ] [ H.text "I'm a useless button!!" ]
  -- , H.slot _default unit Child.component unit absurd
  ]

handleAction ::
     Action
  -> H.HalogenM State Action ChildSlots Message Aff Unit
handleAction = case _ of
  SetState st -> do
    H.put st
