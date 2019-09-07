-- | A barebones template component
module Template
  ( component
  , QueryType(..)
  , Input
  , Message
  , Slot
  , slotName
  )
  where

import Custom.Prelude

import Custom.Halogen as H

type State = Unit
data Action
  = DoStuff
  | Receive Input

type QueryType = Const Void
type Input = Unit
type Message = Void
type MonadType = Aff
type Slot = H.Slot QueryType Message
type ChildSlots = ()

slotName :: SProxy "_t"
slotName = SProxy

component ::
     H.Component H.HTML QueryType Input Message Aff
component =
    H.mkComponent
      { initialState
      , render
      , eval: H.mkEval $ H.defaultEval
        { handleAction = handleAction
        }
      }

initialState :: Input -> State
initialState _ = unit

render ::
     State
  -> H.ComponentHTML Action ChildSlots Aff
render st =
  H.div_
  [ H.elClassAttr "button" "button"
    [ H.onClick \_ -> Nothing ] [ H.text "I'm a useless button!!" ]
  ]

handleAction ::
     Action
  -> H.HalogenM State Action ChildSlots Message Aff Unit
handleAction = case _ of
  Receive input -> do
    pure unit
  DoStuff -> do
    pure unit
