module Custom.HalogenUtils where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Elements as HE
import Halogen.HTML.Core as HC
import Halogen.HTML.Properties as HP
import Halogen.VDom.Types as VT

elClass :: forall p i. String -> String -> Array (HH.HTML i p) -> HH.HTML i p
elClass el clazz = HE.element (VT.ElemName el) [ class_ clazz ]

class_ :: forall r t. String -> HH.IProp ( "class" :: String | r ) t
class_  clazz = HP.class_ $ HC.ClassName clazz
