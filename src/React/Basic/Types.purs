module React.Basic.Types where

import Prelude

import Control.Monad.Eff (Eff, kind Effect)
import Control.Monad.Eff.Uncurried (EffFn1)

-- | A virtual DOM element.
foreign import data JSX :: Type

-- | A React component which can be used from JavaScript.
foreign import data ReactComponent :: Type -> Type

-- | A placeholder effect for all React FFI.
foreign import data ReactFX :: Effect

-- | An _actual_ DOM node (not a virtual DOM element!)
foreign import data DOMNode :: Type

-- | An abstract type representing records of CSS attributes.
foreign import data CSS :: Type

-- | The DataTransfer object is used to hold the data that is being dragged
--   during a drag and drop operation.
foreign import data DataTransfer :: Type

-- | Event data that we receive from React.
type SyntheticEvent eff =
  { bubbles          :: Boolean
  , cancelable       :: Boolean
  , currentTarget    :: DOMNode
  , defaultPrevented :: Boolean
  , eventPhase       :: Number
  , isTrusted        :: Boolean
  , target           :: DOMNode
  , timeStamp        :: Number
  , type             :: String
  , dataTransfer     :: DataTransfer
  , stopPropagation  :: Eff eff Unit
  , preventDefault   :: Eff eff Unit
  }

-- | An event handler, which receives a `SyntheticEvent` and performs some
-- | effects in return.
type EventHandler eff = EffFn1 eff (SyntheticEvent eff) Unit
